#include "adxl313.h"
#include "usart.h"
#include "utils.h"

#include <stdlib.h>
#include <math.h>

/******************************************************************************
Defines and macros
******************************************************************************/

// #define __DEBUG
#define __DEBUG_CONFIG

/* Number of Bytes Read - Two Bytes Per Axis */
#define ADXL313_TO_READ (6)

double gains[3] = {0.00376390, 0.00376009, 0.00349265};				// Counts to Gs

/* Scale factors to convert from hexadecimal to g */
double scale_factors[5] = {ADXL313_10_BIT_05G_SCALE_FACTOR, ADXL313_10_BIT_1G_SCALE_FACTOR,
							ADXL313_10_BIT_2G_SCALE_FACTOR, ADXL313_10_BIT_4G_SCALE_FACTOR, 
							ADXL313_FULL_RES_SCALE_FACTOR };

/* Used to mask the raw value of the sensor - 10, 11, 12 and 13 bit */
uint16_t reg_masks[4] = {ADXL313_10_BIT_RES_MASK, ADXL313_11_BIT_RES_MASK, 
							ADXL313_12_BIT_RES_MASK, ADXL313_13_BIT_RES_MASK};

/* n-Bits resolutions possibles */
uint8_t resolutions[4] = {10, 11, 12, 13};

/******************************************************************************
Function Prototypes
******************************************************************************/

bool adxl313_check_part_id(spi_comm_desc *_spi_desc);

void adxl313_set_register_bit(adxl313_dev *dev, uint8_t regAdress, uint8_t bitPos, bool state);
uint8_t adxl313_get_register_bit(adxl313_dev *dev, uint8_t regAdress, uint8_t bitPos);

/******************************************************************************
Function Definitions
******************************************************************************/

/**
 * @brief   Initializes the sensor and checks its part_id
 * 
 * @param   dev - device structure
 * @param 	comm_type - type of comm (SPI/ I2C)
 * @param 	range - range of the readings (0,5/ 1/ 2/ 4)
 * @param 	resolution - default or full_res 
 * @param 	odr - output data ratio
 * 
 * @retval	success
 * */
bool adxl313_begin(adxl313_dev *dev, enum adxl313_comm_type comm_type, enum adxl313_range range, 
			enum adxl313_resolution resolution, uint16_t odr)
{
	bool ret = adxl313_check_part_id(&spi4_comm_desc);
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
	dev->scale_factor_mult = scale_factors[((1 << 2)*resolution) | ((~resolution & 0x1) * range)];
	dev->error_code = ADXL313_NO_ERROR;
	dev->status = ADXL313_OK;
	dev->data_ready = false;

	/* Reset registers values */
	adxl313_soft_reset(dev);

#ifdef __DEBUG_CONFIG
	uint8_t data_format, int_enable, power_ctl;
	char str[64];
	uint8_t pos_aux = dev->resolution * dev->range;

	sprintf(str, "scale_factor[%d] = %1.9f; reg_masks[%d] = %X \n\r", 
		(uint8_t)((1 << 2)*resolution) | ((~resolution & 0x1) * range), 
		scale_factors[((1 << 2)*resolution) | ((~resolution & 0x1) * range)],
		pos_aux, reg_masks[pos_aux]);
	UART_puts(str);	

	spi_read(dev->spi_desc, ADXL313_DATA_FORMAT, 1, &data_format);
	spi_read(dev->spi_desc, ADXL313_INT_ENABLE, 1, &int_enable);
	spi_read(dev->spi_desc, ADXL313_POWER_CTL, 1, &power_ctl);

	sprintf(str, "data_format = 0x%X; int_enable = 0x%X; power_ctl = 0x%X\n\r", 
		data_format, int_enable, power_ctl);

	UART_puts(str);		
	
#endif /*__DEBUG_CONFIG */

	/* DATA_FORMAT */
	adxl313_set_data_format(dev, range, resolution);
	
	/* Set DATA_READY interrupt - INT_ENABLE*/
	adxl313_set_int(dev, ADXL313_INT_DATA_READY_BIT, true);

	/* Start mesuring - POWER_CTL*/
	adxl313_measure_mode_on(dev);

#ifdef __DEBUG_CONFIG
	spi_read(dev->spi_desc, ADXL313_DATA_FORMAT, 1, &data_format); /* 0x0B */
	spi_read(dev->spi_desc, ADXL313_INT_ENABLE, 1, &int_enable); /* 0x80 */
	spi_read(dev->spi_desc, ADXL313_POWER_CTL, 1, &power_ctl); /* 0x08 */

	sprintf(str, "data_format = 0x%X; int_enable = 0x%X; power_ctl = 0x%X\n\r", 
		data_format, int_enable, power_ctl);
	UART_puts(str);	

	uint8_t _b;
	spi_read(dev->spi_desc, ADXL313_PARTID, 1, &_b);
	sprintf(str, "part_id = 0x%X\n\r", _b);
	UART_puts(str);	

	uint8_t x,y,z;
	adxl313_get_axis_offset(dev, &x,&y,&z);
	sprintf(str, "get_axis_offset: x:0x%X z:0x%X\n\r", x,z);
	UART_puts(str);

#endif /*__DEBUG_CONFIG */

	return (true);
}

/**
 * @brief 	Check Part ID from sensor 
 * 
 * @param 	_spi_desc - pointer to the spi descritor struct
 * 
 * @return 	true if device's part ID register is correct
 **/
bool adxl313_check_part_id(spi_comm_desc *_spi_desc) 
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
bool adxl313_data_ready(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_INT_SOURCE, ADXL313_INT_DATA_READY_BIT);	// check the dataReady bit 
}

/**
 * @brief   Update interrupt source status in program 
 * 
 * @param   dev - device
 * */
void adxl313_update_int_source_status(adxl313_dev *dev) 
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
void adxl313_standby(adxl313_dev *dev) 
{
	/* clears the measure bit, putting device in standby mode, ready for configuration */
	adxl313_set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_MEASURE_BIT, false);
}

/**
 * @brief   Puts device in measure mode
 * 
 * @param   dev - device
 * */
void adxl313_measure_mode_on(adxl313_dev *dev) 
{
	/* sets the measure bit, putting device in measure mode, ready for reading data */
	adxl313_set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_MEASURE_BIT, true);
}

/**
 * @brief   Does a SW reset to the device
 * 
 * @param   dev - device
 * */
void adxl313_soft_reset(adxl313_dev *dev) 
{
	/* soft reset clears all settings, and puts it in standby mode */
	spi_write(dev->spi_desc, ADXL313_SOFT_RESET, ADXL313_SOFT_RESET_WRITE, 1);
}

/**
 * @brief   Set DATA_FORMAT (0x31) to 0x0B:
 * 				~self-test, 4-wire SPI mode,
 * 				interrupt active high, ~default_res/full_res
 * 				justify 0 (LSB) 
 * @param   dev - device to send	
 * */
void adxl313_set_data_format(adxl313_dev *dev, enum adxl313_range range, 
						enum adxl313_resolution resolution)
{/* CORRECT THIS -------------------------------------------------------------------------------*/
	char _b = (resolution << ADXL313_DATA_FORMAT_FULL_RES_B) | range; 
	spi_write(dev->spi_desc, ADXL313_DATA_FORMAT, _b, 1);
}

/**
 * @brief   Read accelerometer 3 axis
 * 
 * @param   dev - device
 * */
void adxl313_read_accel(adxl313_dev *dev) 
{
	uint8_t comm_buff[6] = {0};
	uint8_t pos_aux = dev->resolution * dev->range;

#ifdef __DEBUG
	char str[80];
	sprintf(str, "scale_factor = %lf\n\r reg_masks = %X\n\r resolutions = %d\n\r", dev->scale_factor_mult, reg_masks[pos_aux], resolutions[pos_aux]);
	UART_puts(str);
#endif

	/* Read x, y and z axis (6 bytes) */
	spi_read(dev->spi_desc, ADXL313_DATA_X0, ADXL313_TO_READ, comm_buff);

	/* Each Axis @ All g Ranges: 2 Bytes */
	dev->x = (double)(twos_complement((uint16_t)((comm_buff[1] << 8) | comm_buff[0]) & reg_masks[pos_aux], 
					resolutions[pos_aux]) * dev->scale_factor_mult);
	dev->y = (double)(twos_complement((uint16_t)((comm_buff[3] << 8) | comm_buff[2]) & reg_masks[pos_aux], 
				resolutions[pos_aux]) * dev->scale_factor_mult);
	dev->z = (double)(twos_complement((uint16_t)((comm_buff[5] << 8) | comm_buff[4]) & reg_masks[pos_aux], 
				resolutions[pos_aux]) * dev->scale_factor_mult);

#ifdef __DEBUG
	sprintf(str, "0x%2.4f;0x%2.4f;0x%2.4f\n\r", dev->x, dev->y, dev->z);
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
float adxl313_get_range(adxl313_dev *dev) 
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
void adxl313_set_range(adxl313_dev *dev, enum adxl313_range range) 
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
void adxl313_set_register_bit(adxl313_dev *dev, uint8_t regAdress, uint8_t bitPos, bool state) 
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
uint8_t adxl313_get_register_bit(adxl313_dev *dev, uint8_t regAdress, uint8_t bitPos) 
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
void adxl313_auto_sleep_on(adxl313_dev *dev) 
{
	// sets the autosleep bit
	// note, prior to calling this, 
	// you will need to set THRESH_INACT and TIME_INACT.
	// set the link bit, to "link" activity and inactivity sensing
	adxl313_set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_LINK_BIT, true);
	
	// set the autosleep
	adxl313_set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_AUTOSLEEP_BIT, true);
}

/**
 * @brief   Disable auto sleep mode
 * 
 * @param   dev - device
 * */
void adxl313_auto_sleep_off(adxl313_dev *dev) 
{
	/* clears the autosleep bit */
	adxl313_set_register_bit(dev, ADXL313_POWER_CTL, ADXL313_AUTOSLEEP_BIT, false);
}

/**
 * @brief   Read self test bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * */
bool adxl313_get_self_test_bit(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_SELF_TEST_B);
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
void adxl313_set_self_test_bit(adxl313_dev *dev, bool self_test_bit) 
{
	adxl313_set_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_SELF_TEST_B, self_test_bit);
}

/**
 * @brief   Read spi bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * */
bool adxl313_get_spi_bit(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_SPI_B);
}

/**
 * @brief   Write spi bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * @param 	spi_bit:
 * 			- (1) Puts Device in 3-wire Mode
 * 			- (0) Puts Device in 4-wire SPI Mode
 * */
void adxl313_set_spi_bit(adxl313_dev *dev, bool spi_bit) 
{
	adxl313_set_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_SPI_B, spi_bit);
}

/**
 * @brief   Read interrupt invert bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * */
bool adxl313_get_interrupt_level_bit(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_INT_INV_B);
}

/**
 * @brief   Write interrupt invert bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * @param 	interrupt_level_bit:
 * 			- (0) Sets the Interrupts to Active HIGH
 * 			- (1) Sets the Interrupts to Active LOW
 * */
void adxl313_set_interrupt_level_bit(adxl313_dev *dev, bool interrupt_level_bit) 
{
	adxl313_set_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_INT_INV_B, interrupt_level_bit);
}

/**
 * @brief   Read full resolution bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * */
bool adxl313_get_full_res_bit(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_FULL_RES_B);
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
void adxl313_set_full_res_bit(adxl313_dev *dev, bool full_res_bit) 
{
	adxl313_set_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_FULL_RES_B, full_res_bit);
}

/**
 * @brief   Read justify bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * */
bool adxl313_get_justify_bit(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_JUSTIFY_B);
}

/**
 * @brief   Write justify bit (DATA_FORMAT)
 * 
 * @param   dev - device
 * @param 	justify_bit:
 * 			- (1) Selects the Left Justified Mode
 * 			- (0) Selects Right Justified Mode with Sign Extension
 * */
void adxl313_set_justify_bit(adxl313_dev *dev, bool justify_bit) 
{
	adxl313_set_register_bit(dev, ADXL313_DATA_FORMAT, ADXL313_DATA_FORMAT_JUSTIFY_B, justify_bit);
}

/**
 * @brief   Set axis gain for each axis in Gs/ count
 * 
 * @param   dev - device
 * @param 	_gains - gains to set
 * */
void adxl313_set_axis_gains(adxl313_dev *dev, const double *_gains)
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
void adxl313_get_axis_gains(adxl313_dev *dev, double *_gains)
{
	for(int i = 0; i < 3; i++)
		_gains[i] = gains[i];
}

/**
 * @brief   Set axis offset for each axis in 2-complement format
 * 				3.9 mg/LSB
 * 
 * @param   dev - device
 * @param 	x, y, z - offset for each axis in ug
 * */
void adxl313_set_axis_offset(adxl313_dev *dev, const int x_ug, const int y_ug, const int z_ug) 
{
	int32_t offset_x = 0, offset_y = 0, offset_z = 0;

	offset_x = (x_ug / ADXL313_OFFSET_SCALE_FACTOR);
	offset_y = (y_ug / ADXL313_OFFSET_SCALE_FACTOR);
	offset_z = (z_ug / ADXL313_OFFSET_SCALE_FACTOR);

	spi_write(dev->spi_desc, ADXL313_OFSX, (uint8_t) offset_x, 1);
	spi_write(dev->spi_desc, ADXL313_OFSY, (uint8_t) offset_y, 1);
	spi_write(dev->spi_desc, ADXL313_OFSZ, (uint8_t) offset_z, 1);
}

/**
 * @brief   Get axis offset for each axis in 2-complement format
 * 				Scale Factor of 15.6mg/LSB
 * 
 * @param   dev - device
 * @param 	x, y, z - offset for each axis
 * */
void adxl313_get_axis_offset(adxl313_dev *dev, uint8_t* x, uint8_t* y, uint8_t*z) 
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
void adxl313_set_activity_threshold(adxl313_dev *dev, int activity_threshold) 
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
uint8_t adxl313_get_activity_threshold(adxl313_dev *dev) 
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
void adxl313_set_inactivity_threshold(adxl313_dev *dev, int inactivity_threshold) 
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
uint8_t adxl313_get_inactivity_threshold(adxl313_dev *dev) 
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
void adxl313_set_time_inactivity(adxl313_dev *dev, int time_inactivity) 
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
uint8_t adxl313_get_time_inactivity(adxl313_dev *dev) 
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
bool adxl313_get_low_power_bit(adxl313_dev *dev)
{
	return adxl313_get_register_bit(dev, ADXL313_BW_RATE, ADXL313_BW_RATE_LOW_POWER_B);
}

/**
 * @brief   Write low power bit (BW_RATE)
 * 
 * @param   dev - device
 * @param 	self_test_bit:
 * 			- (1) low power on.
 * 			- (0) low power off.
 * */
void adxl313_set_low_power_bit(adxl313_dev *dev, bool low_power_bit) 
{
	adxl313_set_register_bit(dev, ADXL313_BW_RATE, ADXL313_BW_RATE_LOW_POWER_B, low_power_bit);
}

/**
 * @brief   Read odr (BW_RATE)
 * 
 * @param   dev - device
 * */
double adxl313_get_rate(adxl313_dev *dev)
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
void adxl313_set_rate(adxl313_dev *dev, double rate)
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
uint8_t adxl313_get_int_source(adxl313_dev *dev) 
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
bool adxl313_get_int_source_bit(adxl313_dev *dev, uint8_t interrupt_bit) 
{
	return adxl313_get_register_bit(dev, ADXL313_INT_SOURCE, interrupt_bit);
}

/**
 * @brief   Read interrupt mapping (INT1(0) or INT2(1)) bit
 * 
 * @param   dev - device
 * @param 	interrupt_bit - bit in register
 * 
 * @retval	interrupt_bit mapping in ADXL313_INT_SOURCE register
 * */
bool adxl313_get_int_mapping_bit(adxl313_dev *dev, uint8_t interrupt_bit) 
{
	return adxl313_get_register_bit(dev, ADXL313_INT_MAP, interrupt_bit);
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
void adxl313_set_int_mapping(adxl313_dev *dev, uint8_t interrupt_bit, bool interrupt_pin) 
{
	adxl313_set_register_bit(dev, ADXL313_INT_MAP, interrupt_bit, interrupt_pin);
}

/**
 * @brief   Read enable interrupt bit in ADXL313_INT_ENABLE
 * 
 * @param   dev - device
 * @param 	interrupt_bit - bit in register ADXL313_INT_ENABLE
 * 
 * @retval	interrupt_bit enabled(1) or disabled(0)
 * */
bool adxl313_get_int(adxl313_dev *dev, uint8_t interrupt_bit) 
{
	return adxl313_get_register_bit(dev, ADXL313_INT_ENABLE, interrupt_bit);
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
void adxl313_set_int(adxl313_dev *dev, uint8_t interrupt_bit, bool int_enable) 
{
	adxl313_set_register_bit(dev, ADXL313_INT_ENABLE, interrupt_bit, int_enable);
}

/**
 * @brief   Read fifo mode (ADXL313_FIFO_CTL)
 * 
 * @param   dev - device
 * 
 * @retval	fifo mode
 * */
uint8_t adxl313_get_fifo_mode(adxl313_dev *dev) 
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
void adxl313_set_fifo_mode(adxl313_dev *dev, uint8_t mode) 
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
uint8_t adxl313_get_fifo_samples_threshhold(adxl313_dev *dev) 
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
void adxl313_set_fifo_samples_threshhold(adxl313_dev *dev, uint8_t samples) 
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
uint8_t adxl313_get_fifo_entries_amount(adxl313_dev *dev) 
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
void adxl313_clear_fifo(adxl313_dev *dev) 
{
	uint8_t mode = adxl313_get_fifo_mode(dev); // get current mode
	
	/* Set mode to bypass temporarily to clear contents */
	adxl313_set_fifo_mode(dev, ADXL313_FIFO_MODE_BYPASS); 
	/* Return mode to previous selection. */
	adxl313_set_fifo_mode(dev, mode);
}

/**
 * @brief   Read activity X
 * 
 * @param   dev - device
 * 
 * @retval	ACT_X (ACT_INACT_CTL)
 * */
bool adxl313_get_activity_X(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_ACT_INACT_CTL, 6);
}

/**
 * @brief   Read activity Y
 * 
 * @param   dev - device
 * 
 * @retval	ACT_Y (ACT_INACT_CTL)
 * */
bool adxl313_get_activity_Y(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_ACT_INACT_CTL, 5);
}

/**
 * @brief   Read activity Z
 * 
 * @param   dev - device
 * 
 * @retval	ACT_Z (ACT_INACT_CTL)
 * */
bool adxl313_get_activity_Z(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_ACT_INACT_CTL, 4);
}

/**
 * @brief   Read inactivity X
 * 
 * @param   dev - device
 * 
 * @retval	INACT_X (ACT_INACT_CTL)
 * */
bool adxl313_get_inactivity_X(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_ACT_INACT_CTL, 2);
}

/**
 * @brief   Read inactivity Y
 * 
 * @param   dev - device
 * 
 * @retval	INACT_Y (ACT_INACT_CTL)
 * */
bool adxl313_get_inactivity_Y(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_ACT_INACT_CTL, 1);
}

/**
 * @brief   Read inactivity Z
 * 
 * @param   dev - device
 * 
 * @retval	INACT_Z (ACT_INACT_CTL)
 * */
bool adxl313_get_inactivity_Z(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_ACT_INACT_CTL, 0);
}

/**
 * @brief   Write activity X
 * 
 * @param   dev - device
 * */
void adxl313_set_activity_X(adxl313_dev *dev, bool state) 
{
	adxl313_set_register_bit(dev, ADXL313_ACT_INACT_CTL, 6, state);
}

/**
 * @brief   Write activity Y
 * 
 * @param   dev - device
 * */
void adxl313_set_activity_Y(adxl313_dev *dev, bool state) 
{
	adxl313_set_register_bit(dev, ADXL313_ACT_INACT_CTL, 5, state);
}

/**
 * @brief   Write activity Z
 * 
 * @param   dev - device
 * */
void adxl313_set_activity_Z(adxl313_dev *dev, bool state) 
{
	adxl313_set_register_bit(dev, ADXL313_ACT_INACT_CTL, 4, state);
}

/**
 * @brief   Write activity X & Y & Z
 * 
 * @param   dev - device
 * */
void adxl313_set_activity_X_Y_Z(adxl313_dev *dev, bool stateX, bool stateY, bool stateZ) 
{
	adxl313_set_activity_X(dev, stateX);
	adxl313_set_activity_Y(dev, stateY);
	adxl313_set_activity_Z(dev, stateZ);
}

/**
 * @brief   Write activity X
 * 
 * @param   dev - device
 * */
void adxl313_set_inactivity_X(adxl313_dev *dev, bool state) 
{
	adxl313_set_register_bit(dev, ADXL313_ACT_INACT_CTL, 2, state);
}

/**
 * @brief   Write activity X
 * 
 * @param   dev - device
 * */
void adxl313_set_inactivity_Y(adxl313_dev *dev, bool state) 
{
	adxl313_set_register_bit(dev, ADXL313_ACT_INACT_CTL, 1, state);
}

/**
 * @brief   Write activity X
 * 
 * @param   dev - device
 * */
void adxl313_set_inactivity_Z(adxl313_dev *dev, bool state) 
{
	adxl313_set_register_bit(dev, ADXL313_ACT_INACT_CTL, 0, state);
}

/**
 * @brief   Write activity X
 * 
 * @param   dev - device
 * */
void adxl313_set_inactivity_X_Y_Z(adxl313_dev *dev, bool stateX, bool stateY, bool stateZ) 
{
	adxl313_set_inactivity_X(dev, stateX);
	adxl313_set_inactivity_Y(dev, stateY);
	adxl313_set_inactivity_Z(dev, stateZ);
}

/**
 * @brief   Read activity AD/DC
 * 
 * @param   dev - device
 * 
 * @retval	ACT_AC/DC (ACT_INACT_CTL)
 * */
bool adxl313_get_activity_ac_dc(adxl313_dev *dev) 
{
	return adxl313_get_register_bit(dev, ADXL313_ACT_INACT_CTL, 7);
}

/**
 * @brief   Read inactivity AD/DC
 * 
 * @param   dev - device
 * 
 * @retval	INACT_AC/DC (ACT_INACT_CTL)
 * */
bool adxl313_get_inactivity_ac_dc(adxl313_dev *dev)
{
	return adxl313_get_register_bit(dev, ADXL313_ACT_INACT_CTL, 3);
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
void adxl313_set_activity_ac_dc(adxl313_dev *dev, bool activity_ad_dc) 
{
	adxl313_set_register_bit(dev, ADXL313_ACT_INACT_CTL, 7, activity_ad_dc);
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
void adxl313_set_inactivity_ac_dc(adxl313_dev *dev, bool inactivity_ad_dc) 
{
	adxl313_set_register_bit(dev, ADXL313_ACT_INACT_CTL, 3, inactivity_ad_dc);
}
