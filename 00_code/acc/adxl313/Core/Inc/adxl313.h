#ifndef __ADXL313_H__
#define __ADXL313_H__

#include "adxl313_registers.h"
#include "utils.h"
#include "spi.h"

#define ADXL313_I2C_ADDRESS_DEFAULT 	0x1D
#define ADXL313_I2C_ADDRESS_ALT 			0x53

#define ADXL313_CS_PIN_DEFAULT 				10

 /************************** INTERRUPT PINS **************************/ 
#define ADXL313_INT1_PIN		0x00		//INT1: 0
#define ADXL313_INT2_PIN		0x01		//INT2: 1

 /********************** INTERRUPT BIT POSITION **********************/
#define ADXL313_INT_DATA_READY_BIT		0x07
#define ADXL313_INT_ACTIVITY_BIT			0x04
#define ADXL313_INT_INACTIVITY_BIT		0x03
#define ADXL313_INT_WATERMARK_BIT			0x01
#define ADXL313_INT_OVERRUN_BIT				0x00

 /********************** POWER_CTL BIT POSITION **********************/
#define ADXL313_I2C_DISABLE_BIT		0x06
#define ADXL313_LINK_BIT					0x05
#define ADXL313_AUTOSLEEP_BIT			0x04
#define ADXL313_MEASURE_BIT				0x03
#define ADXL313_SLEEP_BIT					0x02

 /********************** OUTPUT DATA RATIO (HZ) *******************/
#define ADXL313_ODR_3200			0xF			// 1111		IDD = 170uA
#define ADXL313_ODR_1600			0xE			// 1110		IDD = 115uA
#define ADXL313_ODR_800				0xD			// 1101		IDD = 170uA
#define ADXL313_ODR_400				0xC			// 1100		IDD = 170uA (115 low power)
#define ADXL313_ODR_200				0xB			// 1011		IDD = 170uA (82 low power)
#define ADXL313_ODR_100				0xA			// 1010		IDD = 170uA (64 in low power)
#define ADXL313_ODR_50				0x9			// 1001		IDD = 115uA (57 in low power)
#define ADXL313_ODR_25			  0x8			// 1000		IDD = 82uA (50 in low power)
#define ADXL313_ODR_12_5			0x7			// 0111		IDD = 65uA (43 in low power)
#define ADXL313_ODR_6_25			0x6			// 0110		IDD = 57uA

#define ADXL313_ODR_MSK				0xF
#define ADXL313_ODR_OFFSET 		0x6 		// offset ODR register

 /********************** FIFO MODE OPTIONS ***************************/
#define ADXL313_FIFO_MODE_BYPASS	0x00
#define ADXL313_FIFO_MODE_FIFO		0x01
#define ADXL313_FIFO_MODE_STREAM	0x02
#define ADXL313_FIFO_MODE_TRIGGER	0x03

typedef enum {false, true} bool;

/**
 * @enum adxl313_status
 * @brief Enum for status of communication.
 */
enum adxl313_status
{
	ADXL313_ERROR = 0,		// Error Exists
	ADXL313_OK = 1				// No Error
};

/**
 * @enum adxl313_error
 * @brief Enum for communication error.
 */
enum adxl313_error
{
	ADXL313_NO_ERROR = 0,		// Initial State
	ADXL313_READ_ERROR,			// Accelerometer Reading Error
	ADXL313_BAD_ARG					// Bad Argument
};

/**
 * @enum adxl313_comm_type
 * @brief Enum for communication type.
 */
enum adxl313_comm_type {
	ADXL313_SPI_COMM = 0,
	ADXL313_I2C_COMM = 1
};

/**
 * @enum adxl313_op_mode
 * @brief Enum for operating mode.
 */
enum adxl313_op_mode {
	ADXL313_STDBY = 0,
	ADXL313_MEAS = 1
};

/**
 * @enum adxl313_range
 * @brief Enum for selecting range.
 */
enum adxl313_range {
	ADXL313_0_5G_RANGE = 0,
	ADXL313_1G_RANGE = 1,
	ADXL313_2G_RANGE = 2,
	ADXL313_4G_RANGE = 3
};

/**
 * @enum adxl313_resolution
 * @brief Enum for specifying resolution.
 */
enum adxl313_resolution {
	ADXL313_10_BIT_RES = 0,
	ADXL313_11_BIT_RES = 1,
	ADXL313_12_BIT_RES = 2,
	ADXL313_13_BIT_RES = 3
};

/**
 * @enum adxl313_axis
 * @brief Enum for accelerometer axis.
 */
enum adxl313_axis {
	ADXL313_X_AXIS = 0,
	ADXL313_Y_AXIS = 1,
	ADXL313_Z_AXIS = 2
};

/**
 * @struct adxl313_int_source
 * @brief Struct for interrupt source readings.
 */
struct adxl313_int_source
{
	bool data_ready;
	bool activity;
	bool inactivity;
	bool watermark;
	bool over_run;
};

typedef struct __adxl313_dev
{
	/** ADXL313 measurement range */
	enum adxl313_range range;
	/** ADXL313 resolution */
	enum adxl313_resolution resolution;
	/** ADXL313 operation mode, STDBY or MEASURE */
	enum adxl313_op_mode op_mode;
	/** ADXL313 output data rate */
	uint8_t odr;
	/** User-set offset adjustments  on the X axis in twos complement
	 * format with a scale factor depending on device */
	uint8_t x_offset_raw;
	/** User-set offset adjustments  on the Y axis in twos complement
	 * format with a scale factor depending on device */
	uint8_t y_offset_raw;
	/** User-set offset adjustments  on the Z axis in twos complement
	 * format with a scale factor depending on device */
	uint8_t z_offset_raw;
	/** Scale factor multiplier for data conversion to m/s^2 */
	int64_t scale_factor_mult;

	/** Buffer used for communication with ADXL313 */
	volatile uint8_t comm_buff[24];

	int16_t x, y, z; // x, y, and z axis readings of the accelerometer

	/** Device Communication type: ADXL313_SPI_COMM, ADXL313_I2C_COMM */
	enum adxl313_comm_type comm_type;

	/** SPI Descriptor */
	spi_comm_desc *spi_desc;

	enum adxl313_error error_code;	
	enum adxl313_status status;

	/** INT_SOURCE register bit statuses */
	struct adxl313_int_source intSource;

	volatile bool data_ready;

} adxl313_dev;


extern bool begin(adxl313_dev *dev, enum adxl313_comm_type comm_type, 
 									enum adxl313_range range, enum adxl313_resolution resolution, 
 									uint16_t odr);

// dataReady() -- REads the entire INT_Source register, and checks the DATA_READY bit
// to see if new data is available.
// **Note, this will also clear any other INT source bits.
// If you need to know the other int source bits, then use updateIntSourceStatuses()
// Output:	1 - New data available
//					0 - No new data available
extern bool dataReady( adxl313_dev *dev);

// updateIntSourceStatuses() -- Reads the entire INT_Source register, 
// and stores all of the int statuses in class variables.
// note, this will clear all INT source bits.
// Output:	1 - function completed
//			0 - Communication failure
extern void updateIntSourceStatuses( adxl313_dev *dev);
 
extern bool measureModeOn( adxl313_dev *dev);
 
extern bool softReset( adxl313_dev *dev);
 
extern bool standby( adxl313_dev *dev);
 
// readAccel() -- Read the sensors output registers.
// This function will read all six accelerometer output registers.
// The readings are stored in the class' x, y, and z variables. Read
// those _after_ calling readAccel().
extern void readAccel( adxl313_dev *dev, uint16_t *x, uint16_t *y, uint16_t *z);
  
extern void autosleepOn( adxl313_dev *dev);
extern void autosleepOff( adxl313_dev *dev);
 
extern uint8_t getFifoMode( adxl313_dev *dev);
extern void setFifoMode( adxl313_dev *dev, uint8_t mode);
extern void setFifoSamplesThreshhold( adxl313_dev *dev, uint8_t samples);
extern uint8_t getFifoSamplesThreshhold( adxl313_dev *dev);
extern uint8_t getFifoEntriesAmount( adxl313_dev *dev);
extern void clearFifo( adxl313_dev *dev);
 
extern void setAxisGains( adxl313_dev *dev, double *_gains);
extern void getAxisGains( adxl313_dev *dev, double *_gains);
extern void setAxisOffset( adxl313_dev *dev, uint8_t x, uint8_t y, uint8_t z);
extern void getAxisOffset( adxl313_dev *dev, uint8_t* x, uint8_t* y, uint8_t*z);
extern void setActivityThreshold( adxl313_dev *dev, int activityThreshold);
extern int getActivityThreshold( adxl313_dev *dev);
extern void setInactivityThreshold( adxl313_dev *dev, int inactivityThreshold);
extern int getInactivityThreshold( adxl313_dev *dev);
extern void setTimeInactivity( adxl313_dev *dev, int timeInactivity);
extern int getTimeInactivity( adxl313_dev *dev);
 
extern bool isActivityXEnabled( adxl313_dev *dev);
extern bool isActivityYEnabled( adxl313_dev *dev);
extern bool isActivityZEnabled( adxl313_dev *dev);
extern bool isInactivityXEnabled( adxl313_dev *dev);
extern bool isInactivityYEnabled( adxl313_dev *dev);
extern bool isInactivityZEnabled( adxl313_dev *dev);
extern bool isActivityAc( adxl313_dev *dev);
extern bool isInactivityAc( adxl313_dev *dev);
extern void setActivityAc( adxl313_dev *dev, bool state);
extern void setInactivityAc( adxl313_dev *dev, bool state);
 
extern void setActivityX( adxl313_dev *dev, bool state);
extern void setActivityY( adxl313_dev *dev, bool state);
extern void setActivityZ( adxl313_dev *dev, bool state);
extern void setActivityXYZ( adxl313_dev *dev, bool stateX, bool stateY, bool stateZ);
extern void setInactivityX( adxl313_dev *dev, bool state);
extern void setInactivityY( adxl313_dev *dev, bool state);
extern void setInactivityZ( adxl313_dev *dev, bool state);
extern void setInactivityXYZ( adxl313_dev *dev, bool stateX, bool stateY, bool stateZ);
 
extern bool isActivitySourceOnX( adxl313_dev *dev);
extern bool isActivitySourceOnY( adxl313_dev *dev);
extern bool isActivitySourceOnZ( adxl313_dev *dev);
extern bool isAsleep( adxl313_dev *dev);
 
extern bool isLowPower( adxl313_dev *dev);
extern void lowPowerOn( adxl313_dev *dev);
extern void lowPowerOff( adxl313_dev *dev);
extern double getRate( adxl313_dev *dev);
extern void setRate( adxl313_dev *dev, double rate);
extern void setBandwidth( adxl313_dev *dev, uint8_t bw);
extern uint8_t getBandwidth( adxl313_dev *dev);
  
extern bool triggered( adxl313_dev *dev, uint8_t interrupts, int mask);
 
extern uint8_t getInt_Source( adxl313_dev *dev);
extern bool getInterruptSource( adxl313_dev *dev, uint8_t interruptBit);
extern bool getInterruptMapping( adxl313_dev *dev, uint8_t interruptBit);
extern void setInterruptMapping( adxl313_dev *dev, uint8_t interruptBit, bool interruptPin);
extern bool isInterruptEnabled( adxl313_dev *dev, uint8_t interruptBit);
extern void setInterrupt( adxl313_dev *dev, uint8_t interruptBit, bool state);
extern void InactivityINT( adxl313_dev *dev, bool status);
extern void ActivityINT( adxl313_dev *dev, bool status);
extern void DataReadyINT( adxl313_dev *dev, bool status);
extern void WatermarkINT( adxl313_dev *dev, bool status);
extern void OverrunINT( adxl313_dev *dev, bool status);
  
extern float getRange( adxl313_dev *dev);
extern void setRange( adxl313_dev *dev, uint8_t range);
extern bool getSelfTestBit( adxl313_dev *dev);
extern void setSelfTestBit( adxl313_dev *dev, bool selfTestBit);
extern bool getSpiBit( adxl313_dev *dev);
extern void setSpiBit( adxl313_dev *dev, bool spiBit);
extern bool getInterruptLevelBit( adxl313_dev *dev);
extern void setInterruptLevelBit( adxl313_dev *dev, bool interruptLevelBit);
extern bool getFullResBit( adxl313_dev *dev);
extern void setFullResBit( adxl313_dev *dev, bool fullResBit);
extern bool getJustifyBit( adxl313_dev *dev);
extern void setJustifyBit( adxl313_dev *dev, bool justifyBit);
extern void printAllRegister( adxl313_dev *dev);

#endif // _ADXL313_H_ //
