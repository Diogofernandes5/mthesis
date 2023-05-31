#ifndef __ADXL313_REGISTERS_H__
#define __ADXL313_REGISTERS_H__

/********************************************
 * ADXL313 REGISTERS
 ********************************************/
#define ADXL313_DEVID_0					0x00
#define ADXL313_DEVID_1					0x01
#define ADXL313_PARTID					0x02
#define ADXL313_REVID				  	0x03
#define ADXL313_XID					  	0x04
#define ADXL313_SOFT_RESET				0x18
#define ADXL313_OFSX				  	0x1E
#define ADXL313_OFSY				  	0x1F
#define ADXL313_OFSZ				  	0x20
#define ADXL313_THRESH_ACT				0x24
#define ADXL313_THRESH_INACT			0x25
#define ADXL313_TIME_INACT				0x26
#define ADXL313_ACT_INACT_CTL			0x27
#define ADXL313_BW_RATE					0x2C
#define ADXL313_POWER_CTL				0x2D
#define ADXL313_INT_ENABLE				0x2E
#define ADXL313_INT_MAP					0x2F
#define ADXL313_INT_SOURCE				0x30
#define ADXL313_DATA_FORMAT				0x31
#define ADXL313_DATA_X0					0x32
#define ADXL313_DATA_X1					0x33
#define ADXL313_DATA_Y0					0x34
#define ADXL313_DATA_Y1					0x35
#define ADXL313_DATA_Z0					0x36
#define ADXL313_DATA_Z1					0x37
#define ADXL313_FIFO_CTL				0x38
#define ADXL313_FIFO_STATUS				0x39

/********************************************
 * ADXL313 Responses
 ********************************************/
#define ADXL313_DEVID_0_RSP_EXPECTED	0xAD
#define ADXL313_DEVID_1_RSP_EXPECTED	0x1D
#define ADXL313_PARTID_RSP_EXPECTED		0xCB

/********************************************
 * ADXL313 Writes
 ********************************************/
#define ADXL313_SOFT_RESET_WRITE		0x52

/********************************************
 * ADXL313 BITS POS
 ********************************************/

/* DATA_FORMAT REGISTER */
#define ADXL313_DATA_FORMAT_SELF_TEST_B 7
#define ADXL313_DATA_FORMAT_SPI_B       6
#define ADXL313_DATA_FORMAT_INT_INV_B   5
#define ADXL313_DATA_FORMAT_FULL_RES_B  3
#define ADXL313_DATA_FORMAT_JUSTIFY_B   2

/* BW_RATE REGISTER */
#define ADXL313_BW_RATE_LOW_POWER_B     4

#endif