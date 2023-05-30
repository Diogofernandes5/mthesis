#include "adxl313.h"
#include "usart.h"

#include <stdlib.h>
#include <math.h>

#define ADXL313_TO_READ (6)      // Number of Bytes Read - Two Bytes Per Axis

// #define __DEBUG

double gains[3] = { 0.00376390, 0.00376009, 0.00349265 };				// Counts to Gs

/******************************************************************************/
/************************ Functions Declarations ******************************/
/******************************************************************************/
bool check_part_id(spi_comm_desc *_spi_desc);

void set_register_bit(adxl313_dev *dev, uint8_t regAdress, uint8_t bitPos, bool state);
uint8_t get_register_bit(adxl313_dev *dev, uint8_t regAdress, uint8_t bitPos);

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

/**
 * @brief   Initializes the sensor and checks its part_id
 * 
 * @param   dev - device structure
 * @param 	comm_type - type of comm (SPI/ I2C)
 * @param 	range - range of the readings (0,5/ 1/ 2/ 4)
 * @param 	resolution - number of bits resolution 
 * @param 	odr - output data ratio
 * 
 * @retval	success
 * */
bool begin(adxl313_dev *dev, enum adxl313_comm_type comm_type, enum adxl313_range range, 
			enum adxl313_resolution resolution, uint16_t odr)
{
	bool ret = check_part_id(&spi4_comm_desc);
	if(!ret)
	{
		UART_puts("ADXL313 device not found in SPI interface.\n\r \
						Check connection and try again.\n\r");
		return (false);
	}
	else
		UART_puts("ADXL313 device initialized using SPI4 interface.\n\r");

	dev->range = range;
	dev->comm_type = comm_type;
	dev->resolution = resolution;
	dev->odr = odr;
	dev->spi_desc = &spi4_comm_desc;
	dev->error_code = ADXL313_NO_ERROR;
	dev->status = ADXL313_OK;
	dev->data_ready = false;

	/* Reset registers values */
	soft_reset(dev);

#ifdef __DEBUG
	uint8_t data_format, int_enable, power_ctl;
	char str[24];

	spi_read(dev->spi_desc, ADXL313_DATA_FORMAT, 1, &data_format);
	spi_read(dev->spi_desc, ADXL313_INT_ENABLE, 1, &int_enable);
	spi_read(dev->spi_desc, ADXL313_POWER_CTL, 1, &power_ctl);

	sprintf(str, "0x%X;0x%X;0x%X\n\r", data_format, int_enable, power_ctl);
	UART_puts(str);	
#endif /*__DEBUG */

	/* DATA_FORMAT */
	set_data_format(dev, ADXL313_4G_RANGE);
	
	/* Set DATA_READY interrupt - INT_ENABLE*/
	setInterrupt(dev, ADXL313_INT_DATA_READY_BIT, true);

	/* Start mesuring - POWER_CTL*/
	measure_mode_on(dev);

#ifdef __DEBUG
	spi_read(dev->spi_desc, ADXL313_DATA_FORMAT, 1, &data_format); /* 0x0B */
	spi_read(dev->spi_desc, ADXL313_INT_ENABLE, 1, &int_enable); /* 0x80 */
	spi_read(dev->spi_desc, ADXL313_POWER_CTL, 1, &power_ctl); /* 0x08 */

	sprintf(str, "0x%X;0x%X;0x%X\n\r", data_format, int_enable, power_ctl);
	UART_puts(str);	

	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_PARTID, 1, &_b);

	sprintf(str, "0x%X\n\r", _b);
	UART_puts(str);	
#endif /*__DEBUG */

	return (true);
}

/**
 * @brief 	Check Part ID from sensor 
 * 
 * @param 	_spi_desc - pointer to the spi descritor struct
 * 
 * @return 	true if device's part ID register is correct
 **/
bool check_part_id(spi_comm_desc *_spi_desc) 
{
	uint8_t _b = 0xFF;
	
	spi_read(_spi_desc, ADXL313_PARTID, 1, &_b);

	if(_b == ADXL313_PARTID_RSP_EXPECTED)
		return (true);
	
	return (false);
}

/**
 * @brief   Checks if there are data to be read
 * 
 * @param   dev - device
 * 
 * @retval	true if there are data to be read
 * */
bool data_ready(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_INT_SOURCE, ADXL313_INT_DATA_READY_BIT);	// check the dataReady bit 
}

/**
 * @brief   Update interrupt source status in program 
 * 
 * @param   dev - device
 * */
void update_int_source_status(adxl313_dev *dev) 
{
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_INT_SOURCE, 1, &_b);

	dev->intSource.data_ready = ((_b >> ADXL313_INT_DATA_READY_BIT) & 1);
	dev->intSource.activity = ((_b >> ADXL313_INT_ACTIVITY_BIT) & 1);
	dev->intSource.inactivity = ((_b >> ADXL313_INT_INACTIVITY_BIT) & 1);
	dev->intSource.watermark = ((_b >> ADXL313_INT_WATERMARK_BIT) & 1);
	dev->intSource.over_run = ((_b >> ADXL313_INT_OVERRUN_BIT) & 1);
}

/**
 * @brief   Puts device in standby mode to write registers
 * 
 * @param   dev - device
 * */
void standby(adxl313_dev *dev) 
{
	/* clears the measure bit, putting device in standby mode, ready for configuration */
	set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_MEASURE_BIT, false);
}

/**
 * @brief   Puts device in measure mode
 * 
 * @param   dev - device
 * */
void measure_mode_on(adxl313_dev *dev) 
{
	/* sets the measure bit, putting device in measure mode, ready for reading data */
	set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_MEASURE_BIT, true);
}

/**
 * @brief   Does a SW reset to the device
 * 
 * @param   dev - device
 * */
void soft_reset(adxl313_dev *dev) 
{
	/* soft reset clears all settings, and puts it in standby mode */
	spi_write(dev->spi_desc, ADXL313_SOFT_RESET, ADXL313_SOFT_RESET_WRITE, 1);
}

/**
 * @brief   Set DATA_FORMAT (0x31) to 0x0B:
 * 				~self-test, 4-wire SPI mode,
 * 				interrupt active high, full res.
 * 				justify 0 (LSB), +/- 4g range 
 * @param   dev - device to send	
 * */
void set_data_format(adxl313_dev *dev, enum adxl313_range range)
{/* CORRECT THIS -------------------------------------------------------------------------------*/
	char _b = (1 << ADXL313_DATA_FORMAT_FULL_RES_B) | range; 
	spi_write(dev->spi_desc, ADXL313_DATA_FORMAT, _b, 1);
}

/**
 * @brief   Read accelerometer 3 axis
 * 
 * @param   dev - device
 * */
void read_accel(adxl313_dev *dev) 
{
	uint8_t comm_buff[6] = {0};

	/* Read x, y and z axis (6 bytes) */
	spi_read(dev->spi_desc, ADXL313_DATA_X0, ADXL313_TO_READ, comm_buff);

	// Each Axis @ All g Ranges: 10 Bit Resolution (2 Bytes)
	dev->x = (uint16_t)((comm_buff[1] << 8) | comm_buff[0]);
	dev->y = (uint16_t)((comm_buff[3] << 8) | comm_buff[2]);
	dev->z = (uint16_t)((comm_buff[5] << 8) | comm_buff[4]);

	/* NOT HERE 
		-> into the interrupt service routine of SPI_Receive() if using isr*/
	dev->data_ready = true;

#ifdef __DEBUG
	char str[24];
	
	sprintf(str, "0x%4X;0x%4X\n\r", *x, *y);
	UART_puts(str);
#endif /* __DEBUG */
}

/**
 * @brief   Get device range
 * 
 * @param   dev - device
 * 
 * @retval 	Range in floating point number
 * */
float get_range(adxl313_dev *dev) 
{
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

/**
 * @brief   Set device range
 * 
 * @param   dev - device
 * @param 	range - range of the readings (0,5/ 1/ 2/ 4)
 * */
void set_range(adxl313_dev *dev, enum adxl313_range range) 
{
	uint8_t _s = 0;
	uint8_t _b;

	// _s = mask_reg(range, 0x3);

	spi_read(dev->spi_desc, ADXL313_DATA_FORMAT, 1, &_b);
	_s |= mask_reg(_b, 0xEC);

	spi_write(dev->spi_desc, ADXL313_DATA_FORMAT, _s, 1);
}

/**
 * @brief Set a bit in register.
 * 
 * @param dev 		- The device structure.
 * @param regAdress - The register address in the device.
 * @param bitPos 	- The position of the bit one wants to set.
 * @param state 	- State to set (1 or 0)
 * */
void set_register_bit(adxl313_dev *dev, uint8_t regAdress, uint8_t bitPos, bool state) 
{
	uint8_t _b;
	spi_read(dev->spi_desc, regAdress, 1, &_b);

 	/* Forces nth Bit of _b to 1 : 0. Other Bits Unchanged. */
	(state == true) ? (_b |= (1 << bitPos)) : (_b &= ~(1 << bitPos));
	
	spi_write(dev->spi_desc, regAdress, _b, 1);
}

/**
 * @brief Get a bit in register.
 * 
 * @param dev 		- The device structure.
 * @param regAdress - The register address in the device.
 * @param bitPos 	- The position of the bit one wants to get.
 * */
uint8_t get_register_bit(adxl313_dev *dev, uint8_t regAdress, uint8_t bitPos) 
{
	uint8_t _b = 0;
	spi_read(dev->spi_desc, regAdress, 1, &_b);
	return (mask_reg((_b >> bitPos), 0x1));
}

/*************************** AUTOSLEEP BIT **************************/
/*                            ~ ON & OFF                           	*/
void autosleepOn(adxl313_dev *dev) 
{
	// sets the autosleep bit
	// note, prior to calling this, 
	// you will need to set THRESH_INACT and TIME_INACT.
	// set the link bit, to "link" activity and inactivity sensing
	set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_LINK_BIT, true);
	
	// set the autosleep
	set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_AUTOSLEEP_BIT, true);
}

void autosleepOff(adxl313_dev *dev) 
{
	// clears the autosleep bit
	set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_AUTOSLEEP_BIT, false);
}

/*************************** SELF_TEST BIT **************************/
/*                            ~ GET & SET                           */
bool getSelfTestBit(adxl313_dev *dev) 

{
	return get_register_bit(dev, ADXL313_DATA_FORMAT, 7);
}

// If Set (1) Self-Test Applied. Electrostatic Force exerted on the sensor
//  causing a shift in the output data.
// If Set (0) Self-Test Disabled.
void setSelfTestBit(adxl313_dev *dev, bool selfTestBit) 
{
	set_register_bit(dev, ADXL313_DATA_FORMAT, 7, selfTestBit);
}

/*************************** SPI BIT STATE **************************/
/*                           ~ GET & SET                            */
bool getSpiBit(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_DATA_FORMAT, 6);
}

// If Set (1) Puts Device in 3-wire Mode
// If Set (0) Puts Device in 4-wire SPI Mode
void setSpiBit(adxl313_dev *dev, bool spiBit) 
{
	set_register_bit(dev, ADXL313_DATA_FORMAT, 6, spiBit);
}

/*********************** INT_INVERT BIT STATE ***********************/
/*                           ~ GET & SET                            */
bool getInterruptLevelBit(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_DATA_FORMAT, 5);
}

// If Set (0) Sets the Interrupts to Active HIGH
// If Set (1) Sets the Interrupts to Active LOW
void setInterruptLevelBit(adxl313_dev *dev, bool interruptLevelBit) 
{
	set_register_bit(dev, ADXL313_DATA_FORMAT, 5, interruptLevelBit);
}

/************************* FULL_RES BIT STATE ***********************/
/*                           ~ GET & SET                            */
bool getFullResBit(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_DATA_FORMAT, 3);
}

// If Set (1) Device is in Full Resolution Mode: Output Resolution Increase with G Range
//  Set by the Range Bits to Maintain a 4mg/LSB Scale Factor
// If Set (0) Device is in 10-bit Mode: Range Bits Determine Maximum G Range
//  And Scale Factor
void setFullResBit(adxl313_dev *dev, bool fullResBit) 
{
	set_register_bit(dev, ADXL313_DATA_FORMAT, 3, fullResBit);
}

/*************************** JUSTIFY BIT STATE **************************/
/*                           ~ GET & SET                            */
bool getJustifyBit(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_DATA_FORMAT, 2);
}

// If Set (1) Selects the Left Justified Mode
// If Set (0) Selects Right Justified Mode with Sign Extension
void setJustifyBit(adxl313_dev *dev, bool justifyBit) 
{
	set_register_bit(dev, ADXL313_DATA_FORMAT, 2, justifyBit);
}

/****************** GAIN FOR EACH AXIS IN Gs / COUNT *****************/
/*                           ~ SET & GET                            */
void setAxisGains(adxl313_dev *dev, double *_gains)
{
	int i;
	for(i = 0; i < 3; i++){
		gains[i] = _gains[i];
	}
}
void getAxisGains(adxl313_dev *dev, double *_gains)
{
	int i;
	for(i = 0; i < 3; i++){
		_gains[i] = gains[i];
	}
}

/********************* OFSX, OFSY and OFSZ BYTES ********************/
/*                           ~ SET & GET                            */
// OFSX, OFSY and OFSZ: User Offset Adjustments in Twos Complement Format
// Scale Factor of 15.6mg/LSB
void setAxisOffset(adxl313_dev *dev, uint8_t x, uint8_t y, uint8_t z) 
{
	spi_write(dev->spi_desc, ADXL313_OFSX, (uint8_t)x, 1);
	spi_write(dev->spi_desc, ADXL313_OFSY, (uint8_t)y, 1);
	spi_write(dev->spi_desc, ADXL313_OFSZ, (uint8_t)z, 1);
}

void getAxisOffset(adxl313_dev *dev, uint8_t* x, uint8_t* y, uint8_t*z) 
{
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
void setActivityThreshold(adxl313_dev *dev, int activityThreshold) 
{
	uint8_t _b = (uint8_t) constrain(activityThreshold, 0, 255);

	spi_write(dev->spi_desc, ADXL313_THRESH_ACT, _b, 1);
}

// Gets the THRESH_ACT byte
int getActivityThreshold(adxl313_dev *dev) 
{
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
void setInactivityThreshold(adxl313_dev *dev, int inactivityThreshold) 
{
	uint8_t _b = (uint8_t) constrain(inactivityThreshold,0,255);

	spi_write(dev->spi_desc, ADXL313_THRESH_INACT, _b, 1);
}

int getInactivityThreshold(adxl313_dev *dev) 
{
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
void setTimeInactivity(adxl313_dev *dev, int timeInactivity) 
{
	uint8_t _b = (uint8_t) constrain(timeInactivity,0,255);

	spi_write(dev->spi_desc, ADXL313_TIME_INACT, _b, 1);
}

int getTimeInactivity(adxl313_dev *dev) 
{
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_TIME_INACT, 1, &_b);
	return (int) _b;
}

/************************** LOW POWER BIT ***************************/
/*                                                                  */
bool isLowPower(adxl313_dev *dev)
{
	return get_register_bit(dev, ADXL313_BW_RATE, 4);
}

void lowPowerOn(adxl313_dev *dev) 
{
	set_register_bit(dev, ADXL313_BW_RATE, 4, true);
}

void lowPowerOff(adxl313_dev *dev) 
{
	set_register_bit(dev, ADXL313_BW_RATE, 4, false);
}

/*************************** RATE BITS ******************************/
/*                                                                  */
double getRate(adxl313_dev *dev)
{
	uint8_t _b;
	
	spi_read(dev->spi_desc, ADXL313_BW_RATE, 1, &_b);
	_b &= ADXL313_ODR_MSK;
	return (pow(2,((int) _b)-6)) * 6.25;
}

void setRate(adxl313_dev *dev, double rate)
{
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
void setBandwidth(adxl313_dev *dev, uint8_t bw)
{
 	spi_write(dev->spi_desc, ADXL313_BW_RATE, bw, 1);
}

uint8_t getBandwidth(adxl313_dev *dev)
{
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_BW_RATE, 1, &_b);
	return _b;
}

/************************* TRIGGER CHECK  ***************************/
/*                                                                  */
// Check if Action was Triggered in Interrupts
// Example triggered(interrupts, ADXL313_DATA_READY);
bool triggered(adxl313_dev *dev, uint8_t interrupts, int mask)
{
	return ((interrupts >> mask) & 1);
}

uint8_t getInt_Source(adxl313_dev *dev) 
{
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_INT_SOURCE, 1, &_b);
	return _b;
}

bool getInterruptSource(adxl313_dev *dev, uint8_t interruptBit) 
{
	return get_register_bit(dev, ADXL313_INT_SOURCE, interruptBit);
}

bool getInterruptMapping(adxl313_dev *dev, uint8_t interruptBit) 
{
	return get_register_bit(dev, ADXL313_INT_MAP, interruptBit);
}

// /*********************** INTERRUPT MAPPING **************************/
// /*         Set the Mapping of an Interrupt to pin1 or pin2          */
// // eg: setInterruptMapping(ADXL313_INT_WATERMARK_BIT,ADXL313_INT2_PIN);
 void setInterruptMapping(adxl313_dev *dev, uint8_t interruptBit, bool interruptPin) 
 {
 	set_register_bit(dev, ADXL313_INT_MAP, interruptBit, interruptPin);
 }

bool isInterruptEnabled(adxl313_dev *dev, uint8_t interruptBit) 
{
	return get_register_bit(dev, ADXL313_INT_ENABLE,interruptBit);
}

void setInterrupt(adxl313_dev *dev, uint8_t interruptBit, bool state) 
{
	set_register_bit(dev, ADXL313_INT_ENABLE, interruptBit, state);
}

void ActivityINT(adxl313_dev *dev, bool status) 
{
	if(status) {
		setInterrupt(dev, ADXL313_INT_ACTIVITY_BIT, 1);
	}
	else {
		setInterrupt(dev, ADXL313_INT_ACTIVITY_BIT, 0);
	}
}

void InactivityINT(adxl313_dev *dev, bool status) 
{
	if(status) {
		setInterrupt(dev, ADXL313_INT_INACTIVITY_BIT, 1);
	}
	else {
		setInterrupt(dev, ADXL313_INT_INACTIVITY_BIT, 0);
	}
}

void DataReadyINT(adxl313_dev *dev, bool status) 
{
	if(status) {
		setInterrupt(dev, ADXL313_INT_DATA_READY_BIT, 1);
	}
	else {
		setInterrupt(dev, ADXL313_INT_DATA_READY_BIT, 0);
	}
}

void WatermarkINT(adxl313_dev *dev, bool status) 
{
	if(status) {
		setInterrupt(dev, ADXL313_INT_WATERMARK_BIT, 1);
	}
	else {
		setInterrupt(dev, ADXL313_INT_WATERMARK_BIT, 0);
	}
}

void OverrunINT(adxl313_dev *dev, bool status) 
{
	if(status) {
		setInterrupt(dev, ADXL313_INT_OVERRUN_BIT, 1);
	}
	else {
		setInterrupt(dev, ADXL313_INT_OVERRUN_BIT, 0);
	}
}

/*************************** FIFO MODE SETTING **************************/
/*          	                GET & SET                         		*/
uint8_t getFifoMode(adxl313_dev *dev) 
{
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_CTL, 1, &_b);
	uint8_t mode = (_b & 0b11000000);
	mode = (mode >> 6);
	return mode;
}

void setFifoMode(adxl313_dev *dev, uint8_t mode) 
{
	uint8_t _s = (mode << 6);
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_CTL, 1, &_b);
	_s |= (_b & 0b00111111);

	spi_write(dev->spi_desc, ADXL313_FIFO_CTL, _s, 1);
}

uint8_t getFifoSamplesThreshhold(adxl313_dev *dev) 
{
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_CTL, 1, &_b);
	uint8_t samples = (_b & 0b00011111);
	return samples;
}

void setFifoSamplesThreshhold(adxl313_dev *dev, uint8_t samples) 
{
	uint8_t _s = samples;
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_CTL, 1, &_b);
	_s |= (_b & 0b11100000);

	spi_write(dev->spi_desc, ADXL313_FIFO_CTL, _s, 1);
}

uint8_t getFifoEntriesAmount(adxl313_dev *dev) 
{
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_STATUS, 1, &_b);
	uint8_t entries = (_b & 0b00111111);
	return entries;
}

void clearFifo(adxl313_dev *dev) 
{
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
bool isActivityXEnabled(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 6);
}
bool isActivityYEnabled(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 5);
}
bool isActivityZEnabled(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 4);
}
bool isInactivityXEnabled(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 2);
}
bool isInactivityYEnabled(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 1);
}
bool isInactivityZEnabled(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 0);
}

void setActivityX(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 6, state);
}
void setActivityY(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 5, state);
}
void setActivityZ(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 4, state);
}
void setActivityXYZ(adxl313_dev *dev, bool stateX, bool stateY, bool stateZ) 
{
	setActivityX(dev, stateX);
	setActivityY(dev, stateY);
	setActivityZ(dev, stateZ);
}
void setInactivityX(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 2, state);
}
void setInactivityY(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 1, state);
}
void setInactivityZ(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 0, state);
}
void setInactivityXYZ(adxl313_dev *dev, bool stateX, bool stateY, bool stateZ) 
{
	setInactivityX(dev, stateX);
	setInactivityY(dev, stateY);
	setInactivityZ(dev, stateZ);
}

bool isActivityAc(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 7);
}
bool isInactivityAc(adxl313_dev *dev)
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 3);
}

void setActivityAc(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 7, state);
}
void setInactivityAc(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 3, state);
}
