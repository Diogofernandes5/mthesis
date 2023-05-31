#include "adxl313.h"
#include "usart.h"
#include "utils.h"

#include <stdlib.h>
#include <math.h>

/******************************************************************************
Defines and macros
******************************************************************************/

#define ADXL313_TO_READ (6)      // Number of Bytes Read - Two Bytes Per Axis

// #define __DEBUG

double gains[3] = {0.00376390, 0.00376009, 0.00349265};				// Counts to Gs

/******************************************************************************
Function Prototypes
******************************************************************************/

bool check_part_id(spi_comm_desc *_spi_desc);

void set_register_bit(adxl313_dev *dev, uint8_t regAdress, uint8_t bitPos, bool state);
uint8_t get_register_bit(adxl313_dev *dev, uint8_t regAdress, uint8_t bitPos);

/******************************************************************************
Function Definitions
******************************************************************************/

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
	set_int(dev, ADXL313_INT_DATA_READY_BIT, true);

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

/**
 * @brief   Enable auto sleep mode
 * 
 * @param   dev - device
 * */
void auto_sleep_on(adxl313_dev *dev) 
{
	// sets the autosleep bit
	// note, prior to calling this, 
	// you will need to set THRESH_INACT and TIME_INACT.
	// set the link bit, to "link" activity and inactivity sensing
	set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_LINK_BIT, true);
	
	// set the autosleep
	set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_AUTOSLEEP_BIT, true);
}

/**
 * @brief   Disable auto sleep mode
 * 
 * @param   dev - device
 * */
void auto_sleep_off(adxl313_dev *dev) 
{
	/* clears the autosleep bit */
	set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_AUTOSLEEP_BIT, false);
}

/**
 * @brief   Read self test bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * */
bool get_self_test_bit(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_SELF_TEST_B);
}

/**
 * @brief   Write self test bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * @param 	self_test_bit:
 * 			- (1) Self-Test Applied. Electrostatic Force exerted on the sensor
 * 				causing a shift in the output data.
 * 			- (0) Self-Test Disabled.
 * */
void set_self_test_bit(adxl313_dev *dev, bool self_test_bit) 
{
	set_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_SELF_TEST_B, self_test_bit);
}

/**
 * @brief   Read spi bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * */
bool get_spi_bit(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_SPI_B);
}

/**
 * @brief   Write spi bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * @param 	spi_bit:
 * 			- (1) Puts Device in 3-wire Mode
 * 			- (0) Puts Device in 4-wire SPI Mode
 * */
void set_spi_bit(adxl313_dev *dev, bool spi_bit) 
{
	set_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_SPI_B, spi_bit);
}

/**
 * @brief   Read interrupt invert bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * */
bool get_interrupt_level_bit(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_INT_INV_B);
}

/**
 * @brief   Write interrupt invert bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * @param 	interrupt_level_bit:
 * 			- (0) Sets the Interrupts to Active HIGH
 * 			- (1) Sets the Interrupts to Active LOW
 * */
void set_interrupt_level_bit(adxl313_dev *dev, bool interrupt_level_bit) 
{
	set_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_INT_INV_B, interrupt_level_bit);
}

/**
 * @brief   Read full resolution bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * */
bool get_full_res_bit(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_FULL_RES_B);
}

/**
 * @brief   Write interrupt invert bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * @param 	full_res_bit:
 * 			- (1) Device is in Full Resolution Mode: Output Resolution Increase with G Range 
 * 				Set by the Range Bits to Maintain a 4mg/LSB Scale Factor
 * 			- (0) Device is in 10-bit Mode: Range Bits Determine Maximum G Range
 * 				And Scale Factor
 * */
void set_full_res_bit(adxl313_dev *dev, bool full_res_bit) 
{
	set_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_FULL_RES_B, full_res_bit);
}

/**
 * @brief   Read justify bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * */
bool get_justify_bit(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_JUSTIFY_B);
}

/**
 * @brief   Write justify bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * @param 	justify_bit:
 * 			- (1) Selects the Left Justified Mode
 * 			- (0) Selects Right Justified Mode with Sign Extension
 * */
void set_justify_bit(adxl313_dev *dev, bool justify_bit) 
{
	set_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_JUSTIFY_B, justify_bit);
}

/****************** GAIN FOR EACH AXIS IN Gs / COUNT *****************/
/*                           ~ SET & GET                            */

/**
 * @brief   Set axis gain for each axis in Gs/ count
 * 
 * @param   dev - device
 * @param 	_gains - gains to set
 * */
void set_axis_gains(adxl313_dev *dev, const double *_gains)
{
	for(int i = 0; i < 3; i++)
		gains[i] = _gains[i];
}

/**
 * @brief   Get axis gain for each axis in Gs/ count
 * 
 * @param   dev - device
 * @param 	_gains - empty vector to get gains 
 * */
void get_axis_gains(adxl313_dev *dev, double *_gains)
{
	for(int i = 0; i < 3; i++)
		_gains[i] = gains[i];
}

/**
 * @brief   Set axis offset for each axis in 2-complement format
 * 				Scale Factor of 15.6mg/LSB
 * 
 * @param   dev - device
 * @param 	x, y, z - offset for each axis
 * */
void set_axis_offset(adxl313_dev *dev, const uint8_t x, const uint8_t y, const uint8_t z) 
{
	spi_write(dev->spi_desc, ADXL313_OFSX, (uint8_t)x, 1);
	spi_write(dev->spi_desc, ADXL313_OFSY, (uint8_t)y, 1);
	spi_write(dev->spi_desc, ADXL313_OFSZ, (uint8_t)z, 1);
}

/**
 * @brief   Get axis offset for each axis in 2-complement format
 * 				Scale Factor of 15.6mg/LSB
 * 
 * @param   dev - device
 * @param 	x, y, z - offset for each axis
 * */
void get_axis_offset(adxl313_dev *dev, uint8_t* x, uint8_t* y, uint8_t*z) 
{
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_OFSX, 1, &_b);
	*x = (uint8_t) _b;

	spi_read(dev->spi_desc, ADXL313_OFSY, 1, &_b);
	*y = (uint8_t) _b;

	spi_read(dev->spi_desc, ADXL313_OFSZ, 1, &_b);
	*z = (uint8_t) _b;
}

 /**
 * @brief   Set Threshold Value for detecting activity.
 * 			The data format is unsigned; therefore, the magnitude of the activity
 * 				event is compared with the value in the THRESH_ACT register. 
 * 			The scale factor is 15.625 mg/LSB.
 * 			A value of 0 may result in undesirable behavior 
 * 				if the activity interrupt is enabled.
 * 
 * @param   dev - device
 * @param 	activity_threshold - threshold value for detecting activity
 * */
void set_activity_threshold(adxl313_dev *dev, int activity_threshold) 
{
	uint8_t _b = (uint8_t) constrain(activity_threshold, 0, 255);

	spi_write(dev->spi_desc, ADXL313_THRESH_ACT, _b, 1);
}

/**
 * @brief   Get Threshold Value for detecting Activity.
 * 
 * @param   dev - device
 * 
 * @retval 	Threshold Value
 * */
uint8_t get_activity_threshold(adxl313_dev *dev) 
{
	uint8_t _b;
	
	spi_read(dev->spi_desc, ADXL313_THRESH_ACT, 1, &_b);
	return _b;
}

/**
 * @brief   Set Threshold Value for detecting inactivity.
 * 			The data format is unsigned; therefore, the magnitude of the activity
 * 				event is compared with the value in the THRESH_INACT register. 
 * 			The scale factor is 15.625 mg/LSB.
 * 			A value of 0 may result in undesirable behavior 
 * 				if the inactivity interrupt is enabled.
 * 
 * @param   dev - device
 * @param 	inactivity_threshold - threshold value for detecting activity
 * */
void set_inactivity_threshold(adxl313_dev *dev, int inactivity_threshold) 
{
	uint8_t _b = (uint8_t) constrain(inactivity_threshold,0,255);

	spi_write(dev->spi_desc, ADXL313_THRESH_INACT, _b, 1);
}

/**
 * @brief   Get Threshold Value for detecting inactivity.
 * 
 * @param   dev - device
 * 
 * @retval 	Threshold Value
 * */
uint8_t get_inactivity_threshold(adxl313_dev *dev) 
{
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_THRESH_INACT, 1, &_b);
	return _b;
}

/**
 * @brief   Set amount of time that inactivity is declared 
 * 				after accleration is less than THRESH_INACT
 * 			The data format is unsigned; therefore, the magnitude of the activity
 * 				event is compared with the value in the THRESH_INACT register. 
 * 			The scale factor is 1 sec/ LSB. 
 * 			A value of 0 results in an interrupt when the output data is 
 * 				less than the value in the THRESH_INACT register
 * 
 * @param   dev - device
 * @param 	time_inactivity - time for declaring inactivity
 * */
void set_time_inactivity(adxl313_dev *dev, int time_inactivity) 
{
	uint8_t _b = (uint8_t) constrain(time_inactivity,0,255);

	spi_write(dev->spi_desc, ADXL313_TIME_INACT, _b, 1);
}

/**
 * @brief   Get time for declaring inactivity
 * 
 * @param   dev - device
 * 
 * @retval 	Time Value
 * */
uint8_t get_time_inactivity(adxl313_dev *dev) 
{
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_TIME_INACT, 1, &_b);
	return _b;
}

/**
 * @brief   Read low power bit (BW_RATE)
 * 
 * @param   dev - device
 * */
bool get_low_power_bit(adxl313_dev *dev)
{
	return get_register_bit(dev, ADXL313_BW_RATE, ADXL313_BW_RATE_LOW_POWER_B);
}

/**
 * @brief   Write low power bit (BW_RATE)
 * 
 * @param   dev - device
 * @param 	self_test_bit:
 * 			- (1) low power on.
 * 			- (0) low power off.
 * */
void set_low_power_bit(adxl313_dev *dev, bool low_power_bit) 
{
	set_register_bit(dev, ADXL313_BW_RATE, ADXL313_BW_RATE_LOW_POWER_B, low_power_bit);
}

/**
 * @brief   Read odr (BW_RATE)
 * 
 * @param   dev - device
 * */
double get_rate(adxl313_dev *dev)
{
	uint8_t _b;
	
	spi_read(dev->spi_desc, ADXL313_BW_RATE, 1, &_b);
	_b &= ADXL313_ODR_MSK;
	return (pow(2,((int) _b)-6)) * 6.25;
}

/**
 * @brief   Write odr (BW_RATE)
 * 
 * @param   dev - device
 * @param 	rate - odr
 * */
void set_rate(adxl313_dev *dev, double rate)
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

/**
 * @brief   Read interrupt source register
 * 
 * @param   dev - device
 * 
 * @retval	ADXL313_INT_SOURCE register
 * */
uint8_t get_int_source(adxl313_dev *dev) 
{
	uint8_t _b;

	spi_read(dev->spi_desc, ADXL313_INT_SOURCE, 1, &_b);
	return _b;
}

/**
 * @brief   Read interrupt source bit
 * 
 * @param   dev - device
 * @param 	interrupt_bit - bit in register
 * 
 * @retval	interrupt_bit in ADXL313_INT_SOURCE register
 * */
bool get_int_source_bit(adxl313_dev *dev, uint8_t interrupt_bit) 
{
	return get_register_bit(dev, ADXL313_INT_SOURCE, interrupt_bit);
}

/**
 * @brief   Read interrupt mapping (INT1(0) or INT2(1)) bit
 * 
 * @param   dev - device
 * @param 	interrupt_bit - bit in register
 * 
 * @retval	interrupt_bit mapping in ADXL313_INT_SOURCE register
 * */
bool get_int_mapping_bit(adxl313_dev *dev, uint8_t interrupt_bit) 
{
	return get_register_bit(dev, ADXL313_INT_MAP, interrupt_bit);
}

/**
 * @brief   Write interrupt mapping (INT1(0) or INT2(1)) bit
 * 
 * @param   dev - device
 * @param 	interrupt_bit - bit in register
 * @param 	interrupt_pin:
 * 			- (0) maps interrupt to INT1 pin
 * 			- (1) maps interrupt to INT2 pin
 * */
void set_int_mapping(adxl313_dev *dev, uint8_t interrupt_bit, bool interrupt_pin) 
{
	set_register_bit(dev, ADXL313_INT_MAP, interrupt_bit, interrupt_pin);
}

/**
 * @brief   Read enable interrupt bit in ADXL313_INT_ENABLE
 * 
 * @param   dev - device
 * @param 	interrupt_bit - bit in register ADXL313_INT_ENABLE
 * 
 * @retval	interrupt_bit enabled(1) or disabled(0)
 * */
bool get_int(adxl313_dev *dev, uint8_t interrupt_bit) 
{
	return get_register_bit(dev, ADXL313_INT_ENABLE, interrupt_bit);
}

/**
 * @brief   Write interrupt enable bit in ADXL313_INT_ENABLE
 * 
 * @param   dev - device
 * @param 	interrupt_bit - bit in register
 * @param 	int_enable:
 * 			- (0) to disable
 * 			- (1) to enable
 * */
void set_int(adxl313_dev *dev, uint8_t interrupt_bit, bool int_enable) 
{
	set_register_bit(dev, ADXL313_INT_ENABLE, interrupt_bit, int_enable);
}

/**
 * @brief   Read fifo mode (ADXL313_FIFO_CTL)
 * 
 * @param   dev - device
 * 
 * @retval	fifo mode
 * */
uint8_t get_fifo_mode(adxl313_dev *dev) 
{
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_CTL, 1, &_b);
	_b &= 0b11000000;
	_b >>= 6;

	return _b;
}

/**
 * @brief   Write fifo mode register (ADXL313_FIFO_CTL)
 * 
 * @param   dev - device
 * @param 	mode - mode to set fifo:
 * 			- (00) Bypass
 * 			- (01) FIFO
 * 			- (10) Stream 
 * 			- (11) Trigger
 * */
void set_fifo_mode(adxl313_dev *dev, uint8_t mode) 
{
	uint8_t _s = (mode << 6);
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_CTL, 1, &_b);
	_s |= (_b & 0b00111111);

	spi_write(dev->spi_desc, ADXL313_FIFO_CTL, _s, 1);
}

/**
 * @brief   Read fifo sampes (ADXL313_FIFO_CTL)
 * 
 * @param   dev - device
 * 
 * @retval	fifo amples
 * */
uint8_t get_fifo_samples_threshhold(adxl313_dev *dev) 
{
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_CTL, 1, &_b);
	_b &= 0b00011111;
	return _b;
}

/**
 * @brief   Write fifo samples register (ADXL313_FIFO_CTL)
 * 			Entering a value of 0 in the samples bits immediately
 * 				sets the watermark status bit in the INT_SOURCE register, 
 * 				regardless of which FIFO mode is selected.
 * 			Undesirable operation may occur if a value of 0 is used for 
 * 				the samples bits when trigger mode is used.
 * 
 * @param   dev - device
 * @param 	samples (depends on fifo mode):
 * 			- (Bypass) none.
 * 			- (FIFO) Specifies how many FIFO entries are needed to trigger a
 * 				watermark interrupt.
 * 			- (Stream) Specifies how many FIFO entries are needed to trigger a 
 * 				watermark interrupt.
 * 			- (Trigger) Specifies how many FIFO samples are retained in the FIFO 
 * 				buffer before a trigger event.
 * */
void set_fifo_samples_threshhold(adxl313_dev *dev, uint8_t samples) 
{
	uint8_t _s = samples;
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_CTL, 1, &_b);
	_s |= (_b & 0b11100000);

	spi_write(dev->spi_desc, ADXL313_FIFO_CTL, _s, 1);
}

/**
 * @brief   Read fifo entries (ADXL313_FIFO_STATUS)
 * 
 * @param   dev - device
 * 
 * @retval	fifo entries
 * */
uint8_t get_fifo_entries_amount(adxl313_dev *dev) 
{
	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_FIFO_STATUS, 1, &_b);
	uint8_t entries = (_b & 0b00111111);
	return entries;
}

/**
 * @brief   Clear fifo - puts fifo mode in bypass to clear and 
 * 				back again in previous mode
 * 
 * @param   dev - device
 * */
void clear_fifo(adxl313_dev *dev) 
{
	uint8_t mode = get_fifo_mode(dev); // get current mode
	
	/* Set mode to bypass temporarily to clear contents */
	set_fifo_mode(dev, ADXL313_FIFO_MODE_BYPASS); 
	/* Return mode to previous selection. */
	set_fifo_mode(dev, mode);
}

/**
 * @brief   Read activity X
 * 
 * @param   dev - device
 * 
 * @retval	ACT_X (ACT_INACT_CTL)
 * */
bool get_activity_X(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 6);
}

/**
 * @brief   Read activity Y
 * 
 * @param   dev - device
 * 
 * @retval	ACT_Y (ACT_INACT_CTL)
 * */
bool get_activity_Y(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 5);
}

/**
 * @brief   Read activity Z
 * 
 * @param   dev - device
 * 
 * @retval	ACT_Z (ACT_INACT_CTL)
 * */
bool get_activity_Z(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 4);
}

/**
 * @brief   Read inactivity X
 * 
 * @param   dev - device
 * 
 * @retval	INACT_X (ACT_INACT_CTL)
 * */
bool get_inactivity_X(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 2);
}

/**
 * @brief   Read inactivity Y
 * 
 * @param   dev - device
 * 
 * @retval	INACT_Y (ACT_INACT_CTL)
 * */
bool get_inactivity_Y(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 1);
}

/**
 * @brief   Read inactivity Z
 * 
 * @param   dev - device
 * 
 * @retval	INACT_Z (ACT_INACT_CTL)
 * */
bool get_inactivity_Z(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 0);
}

/**
 * @brief   Write activity X
 * 
 * @param   dev - device
 * */
void set_activity_X(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 6, state);
}

/**
 * @brief   Write activity Y
 * 
 * @param   dev - device
 * */
void set_activity_Y(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 5, state);
}

/**
 * @brief   Write activity Z
 * 
 * @param   dev - device
 * */
void set_activity_Z(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 4, state);
}

/**
 * @brief   Write activity X & Y & Z
 * 
 * @param   dev - device
 * */
void set_activity_X_Y_Z(adxl313_dev *dev, bool stateX, bool stateY, bool stateZ) 
{
	set_activity_X(dev, stateX);
	set_activity_Y(dev, stateY);
	set_activity_Z(dev, stateZ);
}

/**
 * @brief   Write activity X
 * 
 * @param   dev - device
 * */
void set_inactivity_X(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 2, state);
}

/**
 * @brief   Write activity X
 * 
 * @param   dev - device
 * */
void set_inactivity_Y(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 1, state);
}

/**
 * @brief   Write activity X
 * 
 * @param   dev - device
 * */
void set_inactivity_Z(adxl313_dev *dev, bool state) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 0, state);
}

/**
 * @brief   Write activity X
 * 
 * @param   dev - device
 * */
void set_inactivity_X_Y_Z(adxl313_dev *dev, bool stateX, bool stateY, bool stateZ) 
{
	set_inactivity_X(dev, stateX);
	set_inactivity_Y(dev, stateY);
	set_inactivity_Z(dev, stateZ);
}

/**
 * @brief   Read activity AD/DC
 * 
 * @param   dev - device
 * 
 * @retval	ACT_AC/DC (ACT_INACT_CTL)
 * */
bool get_activity_ac_dc(adxl313_dev *dev) 
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 7);
}

/**
 * @brief   Read inactivity AD/DC
 * 
 * @param   dev - device
 * 
 * @retval	INACT_AC/DC (ACT_INACT_CTL)
 * */
bool get_inactivity_ac_dc(adxl313_dev *dev)
{
	return get_register_bit(dev, ADXL313_ACT_INACT_CTL, 3);
}

/**
 * @brief   Write activity AD/DC
 * 
 * @param   dev - device
 * @param 	activity_ad_dc:
 * 			- (0) selects dc-coupled operation.
 * 			- (1) enables ac-coupled operation. 
 * 
 * @retval	ACT_AC/DC (ACT_INACT_CTL)
 * */
void set_activity_ac_dc(adxl313_dev *dev, bool activity_ad_dc) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 7, activity_ad_dc);
}

/**
 * @brief   Write inactivity AD/DC
 * 
 * @param   dev - device
 * @param 	inactivity_ad_dc:
 * 			- (0) selects dc-coupled operation.
 * 			- (1) enables ac-coupled operation. 
 * 
 * @retval	INACT_AC/DC (ACT_INACT_CTL)
 * */
void set_inactivity_ac_dc(adxl313_dev *dev, bool inactivity_ad_dc) 
{
	set_register_bit(dev, ADXL313_ACT_INACT_CTL, 3, inactivity_ad_dc);
}
