#include "adxl313.h"
#include "usart.h"

#include <stdlib.h>
#include <math.h>

#define ADXL313_TO_READ (6)      // Number of Bytes Read - Two Bytes Per Axis

/*****************************************************/

double gains[3] = { 0.00376390, 0.00376009, 0.00349265 };				// Counts to Gs

/******************************************************************************/
/************************ Functions Declarations ******************************/
/******************************************************************************/
bool checkPartId( spi_comm_desc *_spi_desc);

void setRegisterBit( adxl313_dev *dev, uint8_t regAdress, int bitPos, bool state);
bool getRegisterBit( adxl313_dev *dev, uint8_t regAdress, int bitPos);

static inline uint8_t mask_reg(uint8_t __reg, uint8_t __mask)
{
	return (uint8_t)(__reg & __mask);
}

static inline int constrain(int __val, int __min, int __max)
{
	return (int)((__val < __min) ? __min : ((__val > __max) ? __max : __val));
}

/******************************************************************************/
/************************ Functions Definitions *******************************/
/******************************************************************************/
bool begin(adxl313_dev *dev, enum adxl313_comm_type comm_type, enum adxl313_range range, 
			enum adxl313_resolution resolution, uint16_t odr)
{
	adxl313_dev _dev;
	spi_comm_desc _spi_desc = {.hspi = &hspi4,
								.CS_port = GPIOE,
								.CS_pin = GPIO_PIN_3 };

	bool ret = checkPartId(&_spi_desc); // PE3
	if(!ret)
	{
		UART_puts("ADXL313 device not found in SPI interface. Check connection and try again.\n\r");
		return (false);
	}
	else
		UART_puts("ADXL313 device initialized using SPI interface!\n\r");

	_dev.range = range;
	_dev.comm_type = comm_type;
	_dev.resolution = resolution;
	_dev.odr = odr;
	_dev.spi_desc = &_spi_desc;
	_dev.error_code = ADXL313_NO_ERROR;
	_dev.status = ADXL313_OK;
	_dev.data_ready = false;

	dev = &_dev; 

	// Set DATA_READY interrupt
	setInterrupt(dev, ADXL313_INT_DATA_READY_BIT, true);
	measureModeOn(dev);

	return (true);
}

/**********************************************************
 * @brief Check Part ID from sensor 
 * 
 * @param _spi_desc - pointer to the spi descritor struct
 * 
 * @return true if device's part ID register is correct
 **********************************************************/
bool checkPartId( spi_comm_desc *_spi_desc) 
{
	char _b = 0xFF;
	
	spi_read(_spi_desc, ADXL313_DEVID_0, 1, &_b);

	char str[24];
	sprintf(str, "0x%X\n\r", _b);
	UART_puts(str);

	if(_b == ADXL313_DEVID_0_RSP_EXPECTED)
		return (true);
	
	return (false);
}

bool dataReady( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_INT_SOURCE, ADXL313_INT_DATA_READY_BIT);	// check the dataReady bit 
}

void updateIntSourceStatuses( adxl313_dev *dev) {
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_INT_SOURCE, 1, &_b);

	dev->intSource.data_ready = ((_b >> ADXL313_INT_DATA_READY_BIT) & 1);
	dev->intSource.activity = ((_b >> ADXL313_INT_ACTIVITY_BIT) & 1);
	dev->intSource.inactivity = ((_b >> ADXL313_INT_INACTIVITY_BIT) & 1);
	dev->intSource.watermark = ((_b >> ADXL313_INT_WATERMARK_BIT) & 1);
	dev->intSource.over_run = ((_b >> ADXL313_INT_OVERRUN_BIT) & 1);
}

bool standby( adxl313_dev *dev) {
	// clears the measure bit, putting decive in standby mode, ready for configuration
	setRegisterBit(dev, ADXL313_POWER_CTL, ADXL313_MEASURE_BIT, false);
	return (true);
}

bool measureModeOn( adxl313_dev *dev) {
	// sets the measure bit, putting decive in measure mode, ready for reading data
	setRegisterBit(dev, ADXL313_POWER_CTL, ADXL313_MEASURE_BIT, true);
	return (true);
}

bool softReset( adxl313_dev *dev) {
	// soft reset clears all settings, and puts it in standby mode
	spi_write(dev->spi_desc, ADXL313_SOFT_RESET, ADXL313_SOFT_RESET_WRITE, 1);
	return (true);
}

/*********************** READING ACCELERATION ***********************/
/*    Reads Acceleration into Three Class Variables:  x, y and z          */

void readAccel( adxl313_dev *dev, uint16_t *x, uint16_t *y, uint16_t *z) {
	spi_read(dev->spi_desc, ADXL313_DATA_X0, ADXL313_TO_READ, dev->comm_buff);

	// Each Axis @ All g Ranges: 10 Bit Resolution (2 Bytes)
	*x = (int16_t)((((int)dev->comm_buff[1]) << 8) | dev->comm_buff[0]);
	*y = (int16_t)((((int)dev->comm_buff[3]) << 8) | dev->comm_buff[2]);
	*z = (int16_t)((((int)dev->comm_buff[5]) << 8) | dev->comm_buff[4]);

	// store last axis values 
	dev->x = *x;
	dev->y = *y;
	dev->z = *z;

	/* NOT HERE 
		-> into the interrupt service routine of SPI_Receive()*/
	dev->data_ready = true;
}

/*************************** RANGE SETTING **************************/
/*          	OPTIONS: 0.5g, 1g, 2g, 4g ~ GET & SET          		*/
float getRange( adxl313_dev *dev) {
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_DATA_FORMAT, 1, &_b);
	dev->range = (enum adxl313_range)(mask_reg(_b, 0x3));

	float range_val = 0;
	switch (dev->range) {
		case ADXL313_0_5G_RANGE:
			range_val = 0.5;
			break;
		case ADXL313_1G_RANGE:
			range_val = 1.0;
			break;
		case ADXL313_2G_RANGE:
			range_val = 2.0;
			break;
		case ADXL313_4G_RANGE:
			range_val = 4.0;
			break;
	}
	return range_val;
}

void setRange( adxl313_dev *dev, enum adxl313_range range) {
	uint8_t _s;
	uint8_t _b;

	_s = mask_reg(range, 0x3);

	spi_read(dev->spi_desc, ADXL313_DATA_FORMAT, 1, &_b);
	_s |= mask_reg(_b, 0xEC);

	spi_write(dev->spi_desc, ADXL313_DATA_FORMAT, _s, 1);
}

/****************************************************************
 * @brief Set a bit in register.
 * 
 * @param dev 		- The device structure.
 * @param regAdress - The register address in the device.
 * @param bitPos 	- The position of the bit one wants to set.
 * @param state 	- State to set (1 or 0)
 ****************************************************************/
void setRegisterBit( adxl313_dev *dev, uint8_t regAdress, int bitPos, bool state) {
	uint8_t _b;
	spi_read(dev->spi_desc, regAdress, 1, &_b);

	(state == true) ? (_b |= (1 << bitPos)) : (_b &= ~(1 << bitPos));
	
	// if (state) {
	// 	_b |= (1 << bitPos);  // Forces nth Bit of _b to 1. Other Bits Unchanged.
	// }
	// else {
	// 	_b &= ~(1 << bitPos); // Forces nth Bit of _b to 0. Other Bits Unchanged.
	// }
	
	spi_write(dev->spi_desc, regAdress, _b, 1);
}

/****************************************************************
 * @brief Get a bit in register.
 * 
 * @param dev 		- The device structure.
 * @param regAdress - The register address in the device.
 * @param bitPos 	- The position of the bit one wants to get.
****************************************************************/
bool getRegisterBit( adxl313_dev *dev, uint8_t regAdress, int bitPos) {
	uint8_t _b;
	spi_read(dev->spi_desc, regAdress, 1, &_b);
	return (mask_reg((_b >> bitPos), 1));
}

/*************************** AUTOSLEEP BIT **************************/
/*                            ~ ON & OFF                           	*/
void autosleepOn( adxl313_dev *dev) {
	// sets the autosleep bit
	// note, prior to calling this, 
	// you will need to set THRESH_INACT and TIME_INACT.
	// set the link bit, to "link" activity and inactivity sensing
	setRegisterBit(dev, ADXL313_POWER_CTL, ADXL313_LINK_BIT, true);
	
	// set the autosleep
	setRegisterBit(dev, ADXL313_POWER_CTL, ADXL313_AUTOSLEEP_BIT, true);
}

void autosleepOff( adxl313_dev *dev) {
	// clears the autosleep bit
	setRegisterBit(dev, ADXL313_POWER_CTL, ADXL313_AUTOSLEEP_BIT, false);
}

/*************************** SELF_TEST BIT **************************/
/*                            ~ GET & SET                           */
bool getSelfTestBit( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_DATA_FORMAT, 7);
}

// If Set (1) Self-Test Applied. Electrostatic Force exerted on the sensor
//  causing a shift in the output data.
// If Set (0) Self-Test Disabled.
void setSelfTestBit( adxl313_dev *dev, bool selfTestBit) {
	setRegisterBit(dev, ADXL313_DATA_FORMAT, 7, selfTestBit);
}

/*************************** SPI BIT STATE **************************/
/*                           ~ GET & SET                            */
bool getSpiBit( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_DATA_FORMAT, 6);
}

// If Set (1) Puts Device in 3-wire Mode
// If Set (0) Puts Device in 4-wire SPI Mode
void setSpiBit( adxl313_dev *dev, bool spiBit) {
	setRegisterBit(dev, ADXL313_DATA_FORMAT, 6, spiBit);
}

/*********************** INT_INVERT BIT STATE ***********************/
/*                           ~ GET & SET                            */
bool getInterruptLevelBit( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_DATA_FORMAT, 5);
}

// If Set (0) Sets the Interrupts to Active HIGH
// If Set (1) Sets the Interrupts to Active LOW
void setInterruptLevelBit( adxl313_dev *dev, bool interruptLevelBit) {
	setRegisterBit(dev, ADXL313_DATA_FORMAT, 5, interruptLevelBit);
}

/************************* FULL_RES BIT STATE ***********************/
/*                           ~ GET & SET                            */
bool getFullResBit( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_DATA_FORMAT, 3);
}

// If Set (1) Device is in Full Resolution Mode: Output Resolution Increase with G Range
//  Set by the Range Bits to Maintain a 4mg/LSB Scale Factor
// If Set (0) Device is in 10-bit Mode: Range Bits Determine Maximum G Range
//  And Scale Factor
void setFullResBit( adxl313_dev *dev, bool fullResBit) {
	setRegisterBit(dev, ADXL313_DATA_FORMAT, 3, fullResBit);
}

/*************************** JUSTIFY BIT STATE **************************/
/*                           ~ GET & SET                            */
bool getJustifyBit( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_DATA_FORMAT, 2);
}

// If Set (1) Selects the Left Justified Mode
// If Set (0) Selects Right Justified Mode with Sign Extension
void setJustifyBit( adxl313_dev *dev, bool justifyBit) {
	setRegisterBit(dev, ADXL313_DATA_FORMAT, 2, justifyBit);
}

/****************** GAIN FOR EACH AXIS IN Gs / COUNT *****************/
/*                           ~ SET & GET                            */
void setAxisGains(adxl313_dev *dev, double *_gains){
	int i;
	for(i = 0; i < 3; i++){
		gains[i] = _gains[i];
	}
}
void getAxisGains(adxl313_dev *dev, double *_gains){
	int i;
	for(i = 0; i < 3; i++){
		_gains[i] = gains[i];
	}
}

/********************* OFSX, OFSY and OFSZ BYTES ********************/
/*                           ~ SET & GET                            */
// OFSX, OFSY and OFSZ: User Offset Adjustments in Twos Complement Format
// Scale Factor of 15.6mg/LSB
void setAxisOffset( adxl313_dev *dev, uint8_t x, uint8_t y, uint8_t z) {
	spi_write(dev->spi_desc, ADXL313_OFSX, (uint8_t)x, 1);
	spi_write(dev->spi_desc, ADXL313_OFSY, (uint8_t)y, 1);
	spi_write(dev->spi_desc, ADXL313_OFSZ, (uint8_t)z, 1);
}

void getAxisOffset( adxl313_dev *dev, uint8_t* x, uint8_t* y, uint8_t*z) {
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_OFSX, 1, &_b);
	*x = (uint8_t) _b;

	spi_read(dev->spi_desc, ADXL313_OFSY, 1, &_b);
	*y = (uint8_t) _b;

	spi_read(dev->spi_desc, ADXL313_OFSZ, 1, &_b);
	*z = (uint8_t) _b;
}

/*********************** THRESH_ACT REGISTER ************************/
/*                          ~ SET & GET                             */
// Holds the Threshold Value for Detecting Activity.
// Data Format is Unsigned, so the Magnitude of the Activity Event is Compared
//  with the Value is Compared with the Value in the THRESH_ACT Register.
// The Scale Factor is 62.5mg/LSB.
// Value of 0 may Result in Undesirable Behavior if the Activity Interrupt Enabled.
// It Accepts a Maximum Value of 255.
void setActivityThreshold( adxl313_dev *dev, int activityThreshold) {
	uint8_t _b = (uint8_t) constrain(activityThreshold, 0, 255);

	spi_write(dev->spi_desc, ADXL313_THRESH_ACT, _b, 1);
}

// Gets the THRESH_ACT byte
int getActivityThreshold(adxl313_dev *dev) {
	uint8_t _b;
	
	spi_read(dev->spi_desc, ADXL313_THRESH_ACT, 1, &_b);
	return (int) _b;
}

/********************** THRESH_INACT REGISTER ***********************/
/*                          ~ SET & GET                             */
// Holds the Threshold Value for Detecting Inactivity.
// The Data Format is Unsigned, so the Magnitude of the INactivity Event is
//  Compared with the value in the THRESH_INACT Register.
// Scale Factor is 62.5mg/LSB.
// Value of 0 May Result in Undesirable Behavior if the Inactivity Interrupt Enabled.
// It Accepts a Maximum Value of 255.
void setInactivityThreshold(adxl313_dev *dev, int inactivityThreshold) {
	uint8_t _b = (uint8_t) constrain(inactivityThreshold,0,255);

	spi_write(dev->spi_desc, ADXL313_THRESH_INACT, _b, 1);
}

int getInactivityThreshold(adxl313_dev *dev) {
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_THRESH_INACT, 1, &_b);
	return (int) _b;
}

/*********************** TIME_INACT RESIGER *************************/
/*                          ~ SET & GET                             */
// Contains an Unsigned Time Value Representing the Amount of Time that
//  Acceleration must be Less Than the Value in the THRESH_INACT Register
//  for Inactivity to be Declared.
// Uses Filtered Output Data* unlike other Interrupt Functions
// Scale Factor is 1sec/LSB.
// Value Must Be Between 0 and 255.
void setTimeInactivity(adxl313_dev *dev, int timeInactivity) {
	uint8_t _b = (uint8_t) constrain(timeInactivity,0,255);

	spi_write(dev->spi_desc, ADXL313_TIME_INACT, _b, 1);
}

int getTimeInactivity(adxl313_dev *dev) {
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_TIME_INACT, 1, &_b);
	return (int) _b;
}

/************************** LOW POWER BIT ***************************/
/*                                                                  */
bool isLowPower( adxl313_dev *dev){
	return getRegisterBit(dev, ADXL313_BW_RATE, 4);
}
void lowPowerOn( adxl313_dev *dev) {
	setRegisterBit(dev, ADXL313_BW_RATE, 4, true);
}
void lowPowerOff( adxl313_dev *dev) {
	setRegisterBit(dev, ADXL313_BW_RATE, 4, false);
}

/*************************** RATE BITS ******************************/
/*                                                                  */
double getRate( adxl313_dev *dev){
	uint8_t _b;
	
	spi_read(dev->spi_desc, ADXL313_BW_RATE, 1, &_b);
	_b &= ADXL313_ODR_MSK;
	return (pow(2,((int) _b)-6)) * 6.25;
}

void setRate( adxl313_dev *dev, double rate){
	uint8_t _b,_s;
	int v = (int) (rate / 6.25);
	int r = 0;

	while (v >>= 1)
		r++;

	if (r <= 9) // if rate <= 3200 --> r <= 9  
	{
		spi_read(dev->spi_desc, ADXL313_BW_RATE, 1, &_b);
		_s = (uint8_t) (r + ADXL313_ODR_OFFSET) | (_b & ~ADXL313_ODR_MSK);
		spi_write(dev->spi_desc, ADXL313_BW_RATE, _s, 1);
	}
	else // if rate > 3200 
		UART_puts("Invalid rate value!\n\r");
}

/*************************** BANDWIDTH ******************************/
/*                          ~ SET & GET                             */
void setBandwidth( adxl313_dev *dev, uint8_t bw){
 	spi_write(dev->spi_desc, ADXL313_BW_RATE, bw, 1);
}

uint8_t getBandwidth( adxl313_dev *dev){
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_BW_RATE, 1, &_b);
	return _b;
}

/************************* TRIGGER CHECK  ***************************/
/*                                                                  */
// Check if Action was Triggered in Interrupts
// Example triggered(interrupts, ADXL313_DATA_READY);
bool triggered(adxl313_dev *dev, uint8_t interrupts, int mask){
	return ((interrupts >> mask) & 1);
}

uint8_t getInt_Source( adxl313_dev *dev) {
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_INT_SOURCE, 1, &_b);
	return _b;
}

bool getInterruptSource( adxl313_dev *dev, uint8_t interruptBit) {
	return getRegisterBit(dev, ADXL313_INT_SOURCE, interruptBit);
}

bool getInterruptMapping( adxl313_dev *dev, uint8_t interruptBit) {
	return getRegisterBit(dev, ADXL313_INT_MAP, interruptBit);
}

// /*********************** INTERRUPT MAPPING **************************/
// /*         Set the Mapping of an Interrupt to pin1 or pin2          */
// // eg: setInterruptMapping(ADXL313_INT_WATERMARK_BIT,ADXL313_INT2_PIN);
 void setInterruptMapping( adxl313_dev *dev, uint8_t interruptBit, bool interruptPin) {
 	setRegisterBit(dev, ADXL313_INT_MAP, interruptBit, interruptPin);
 }

bool isInterruptEnabled( adxl313_dev *dev, uint8_t interruptBit) {
	return getRegisterBit(dev, ADXL313_INT_ENABLE,interruptBit);
}

void setInterrupt( adxl313_dev *dev, uint8_t interruptBit, bool state) {
	setRegisterBit(dev, ADXL313_INT_ENABLE, interruptBit, state);
}

void ActivityINT( adxl313_dev *dev, bool status) {
	if(status) {
		setInterrupt(dev, ADXL313_INT_ACTIVITY_BIT, 1);
	}
	else {
		setInterrupt(dev, ADXL313_INT_ACTIVITY_BIT, 0);
	}
}
void InactivityINT( adxl313_dev *dev, bool status) {
	if(status) {
		setInterrupt(dev, ADXL313_INT_INACTIVITY_BIT, 1);
	}
	else {
		setInterrupt(dev, ADXL313_INT_INACTIVITY_BIT, 0);
	}
}

void DataReadyINT( adxl313_dev *dev, bool status) {
	if(status) {
		setInterrupt(dev, ADXL313_INT_DATA_READY_BIT, 1);
	}
	else {
		setInterrupt(dev, ADXL313_INT_DATA_READY_BIT, 0);
	}
}

void WatermarkINT( adxl313_dev *dev, bool status) {
	if(status) {
		setInterrupt(dev, ADXL313_INT_WATERMARK_BIT, 1);
	}
	else {
		setInterrupt(dev, ADXL313_INT_WATERMARK_BIT, 0);
	}
}

void OverrunINT( adxl313_dev *dev, bool status) {
	if(status) {
		setInterrupt(dev, ADXL313_INT_OVERRUN_BIT, 1);
	}
	else {
		setInterrupt(dev, ADXL313_INT_OVERRUN_BIT, 0);
	}
}

/*************************** FIFO MODE SETTING **************************/
/*          	                GET & SET                         		*/
uint8_t getFifoMode( adxl313_dev *dev) {
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_CTL, 1, &_b);
	uint8_t mode = (_b & 0b11000000);
	mode = (mode >> 6);
	return mode;
}

void setFifoMode( adxl313_dev *dev, uint8_t mode) {
	uint8_t _s = (mode << 6);
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_CTL, 1, &_b);
	_s |= (_b & 0b00111111);

	spi_write(dev->spi_desc, ADXL313_FIFO_CTL, _s, 1);
}

uint8_t getFifoSamplesThreshhold( adxl313_dev *dev) {
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_CTL, 1, &_b);
	uint8_t samples = (_b & 0b00011111);
	return samples;
}

void setFifoSamplesThreshhold( adxl313_dev *dev, uint8_t samples) {
	uint8_t _s = samples;
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_CTL, 1, &_b);
	_s |= (_b & 0b11100000);

	spi_write(dev->spi_desc, ADXL313_FIFO_CTL, _s, 1);
}

uint8_t getFifoEntriesAmount( adxl313_dev *dev) {
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_STATUS, 1, &_b);
	uint8_t entries = (_b & 0b00111111);
	return entries;
}

void clearFifo( adxl313_dev *dev) {
	uint8_t mode = getFifoMode(dev); // get current mode
	
	setFifoMode(dev, ADXL313_FIFO_MODE_BYPASS); // set mode to bypass temporarily to clear contents
	setFifoMode(dev, mode); // return mode to previous selection.
}

/********************************************************************/
/*                                                                  */
//PARA CAGAR

// Print Register Values to Serial Output =
// Can be used to Manually Check the Current Configuration of Device
// void printAllRegister( adxl313_dev *dev) {
// 	uint8_t _b;
// 	char str[16];
// 	int i;
	
// 	spi_read(dev.spi_desc, 0x00, 1, &_b);
// 	sprintf(str, "0x00: %X; \n\r", _b);
// 	UART_puts(str);

// 	for (i = 29; i <= 57; i++)
// 	{
// 		spi_read(dev.spi_desc, i, 1, &_b);
// 		sprintf("0x%X: 0x%X \n\r", i, _b);
// 		UART_puts(str);
// 	}
// }

// // void print_byte(uint8_t val){
// // 	int i;
// // 	Serial.print("B");
// // 	for(i=7; i>=0; i--){
// // 		Serial.print(val >> i & 1, BIN);
// // 	}
// // }

// /***************** WRITES VALUE TO ADDRESS REGISTER *****************/
// void writeTo(uint8_t address, uint8_t val) {
// 	writeToSPI(address, val);
	
// 	// if(comm) {
// 	// 	writeToI2C(address, val);
// 	// }
// 	// else {
	
// 	// }
// }

// /************************ READING NUM BYTES *************************/
// /*    Reads Num Bytes. Starts from Address Reg to _buff Array        */
// void readFrom(uint8_t address, int num, uint8_t *_buff) {
// 	readFromSPI(address, num, _buff);	// If SPI Communication

// 	// if(comm) {
// 	// 	readFromI2C(address, num, _buff);	// If I2C Communication
// 	// }
// 	// else {

// 	// }
// }

/************************** ACTIVITY BITS ***************************/
/*                                                                  */
bool isActivityXEnabled( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_ACT_INACT_CTL, 6);
}
bool isActivityYEnabled( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_ACT_INACT_CTL, 5);
}
bool isActivityZEnabled( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_ACT_INACT_CTL, 4);
}
bool isInactivityXEnabled( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_ACT_INACT_CTL, 2);
}
bool isInactivityYEnabled( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_ACT_INACT_CTL, 1);
}
bool isInactivityZEnabled( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_ACT_INACT_CTL, 0);
}

void setActivityX( adxl313_dev *dev, bool state) {
	setRegisterBit(dev, ADXL313_ACT_INACT_CTL, 6, state);
}
void setActivityY( adxl313_dev *dev, bool state) {
	setRegisterBit(dev, ADXL313_ACT_INACT_CTL, 5, state);
}
void setActivityZ( adxl313_dev *dev, bool state) {
	setRegisterBit(dev, ADXL313_ACT_INACT_CTL, 4, state);
}
void setActivityXYZ( adxl313_dev *dev, bool stateX, bool stateY, bool stateZ) {
	setActivityX(dev, stateX);
	setActivityY(dev, stateY);
	setActivityZ(dev, stateZ);
}
void setInactivityX( adxl313_dev *dev, bool state) {
	setRegisterBit(dev, ADXL313_ACT_INACT_CTL, 2, state);
}
void setInactivityY( adxl313_dev *dev, bool state) {
	setRegisterBit(dev, ADXL313_ACT_INACT_CTL, 1, state);
}
void setInactivityZ( adxl313_dev *dev, bool state) {
	setRegisterBit(dev, ADXL313_ACT_INACT_CTL, 0, state);
}
void setInactivityXYZ( adxl313_dev *dev, bool stateX, bool stateY, bool stateZ) {
	setInactivityX(dev, stateX);
	setInactivityY(dev, stateY);
	setInactivityZ(dev, stateZ);
}

bool isActivityAc( adxl313_dev *dev) {
	return getRegisterBit(dev, ADXL313_ACT_INACT_CTL, 7);
}
bool isInactivityAc( adxl313_dev *dev){
	return getRegisterBit(dev, ADXL313_ACT_INACT_CTL, 3);
}

void setActivityAc( adxl313_dev *dev, bool state) {
	setRegisterBit(dev, ADXL313_ACT_INACT_CTL, 7, state);
}
void setInactivityAc( adxl313_dev *dev, bool state) {
	setRegisterBit(dev, ADXL313_ACT_INACT_CTL, 3, state);
}
