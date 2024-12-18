#ifndef __ADXL313_H__
#define __ADXL313_H__

#include "adxl313_registers.h"
#include "utils.h"
#include "spi.h"

/******************************************************************************
Defines and macros
******************************************************************************/
#define ADXL313_I2C_ADDRESS_DEFAULT 				0x1D
#define ADXL313_I2C_ADDRESS_ALT 					0x53

 /************************** INTERRUPT PINS **************************/ 
#define ADXL313_INT1_PIN							0x00
#define ADXL313_INT2_PIN							0x01

 /********************** INTERRUPT BIT POSITION **********************/
#define ADXL313_INT_DATA_READY_BIT					0x07
#define ADXL313_INT_ACTIVITY_BIT					0x04
#define ADXL313_INT_INACTIVITY_BIT					0x03
#define ADXL313_INT_WATERMARK_BIT					0x01
#define ADXL313_INT_OVERRUN_BIT						0x00

 /********************** POWER_CTL BIT POSITION **********************/
#define ADXL313_I2C_DISABLE_BIT						0x06
#define ADXL313_LINK_BIT							0x05
#define ADXL313_AUTOSLEEP_BIT						0x04
#define ADXL313_MEASURE_BIT							0x03
#define ADXL313_SLEEP_BIT							0x02

 /********************** OUTPUT DATA RATIO (HZ) *******************/
#define ADXL313_ODR_3200							0xF			// IDD = 170uA
#define ADXL313_ODR_1600							0xE			// IDD = 115uA
#define ADXL313_ODR_800								0xD			// IDD = 170uA
#define ADXL313_ODR_400								0xC			// IDD = 170uA (115 low power)
#define ADXL313_ODR_200								0xB			// IDD = 170uA (82 low power)
#define ADXL313_ODR_100								0xA			// IDD = 170uA (64 in low power)
#define ADXL313_ODR_50								0x9			// IDD = 115uA (57 in low power)
#define ADXL313_ODR_25			  					0x8			// IDD = 82uA (50 in low power)
#define ADXL313_ODR_12_5							0x7			// IDD = 65uA (43 in low power)
#define ADXL313_ODR_6_25							0x6			// IDD = 57uA

#define ADXL313_ODR_MSK								0xF
#define ADXL313_ODR_OFFSET 							0x6 

/********************** FIFO MODE OPTIONS ***************************/
#define ADXL313_FIFO_MODE_BYPASS					0x00
#define ADXL313_FIFO_MODE_FIFO						0x01
#define ADXL313_FIFO_MODE_STREAM					0x02
#define ADXL313_FIFO_MODE_TRIGGER					0x03

#define ADXL313_RANDOM_FACTOR						1

/* Full Resolution any g range - 1024 LSB/g */
#define ADXL313_FULL_RES_SCALE_FACTOR				(double)(0.000976562 * ADXL313_RANDOM_FACTOR)
/* Full Resolution +/-0.5g range - 1024 LSB/g */
#define ADXL313_10_BIT_05G_SCALE_FACTOR				(double)(0.000976562 * ADXL313_RANDOM_FACTOR)
/* Full Resolution +/-1g range - 512 LSB/g */
#define ADXL313_10_BIT_1G_SCALE_FACTOR				(double)(0.001953125 * ADXL313_RANDOM_FACTOR)
/* Full Resolution +/-2g range - 256 LSB/g */
#define ADXL313_10_BIT_2G_SCALE_FACTOR				(double)(0.00390625 * ADXL313_RANDOM_FACTOR)
/* Full Resolution +/-4g range - 128 LSB/g */
#define ADXL313_10_BIT_4G_SCALE_FACTOR				(double)(0.0078125 * ADXL313_RANDOM_FACTOR)

#define ADXL313_10_BIT_RES_MASK						0x03FF
#define ADXL313_11_BIT_RES_MASK						0x07FF
#define ADXL313_12_BIT_RES_MASK						0x0FFF
#define ADXL313_13_BIT_RES_MASK						0x1FFF

#define ADXL313_OFFSET_SCALE_FACTOR					3930

/******************************************************************************
Data structures
******************************************************************************/
/**
 * @enum adxl313_status
 * @brief Enum for status of communication.
 */
enum adxl313_status
{
	ADXL313_ERROR = 0,	
	ADXL313_OK = 1
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
enum adxl313_comm_type 
{
	ADXL313_SPI_COMM = 0,
	ADXL313_I2C_COMM = 1
};

/**
 * @enum adxl313_op_mode
 * @brief Enum for operating mode.
 */
enum adxl313_op_mode 
{
	ADXL313_STDBY = 0,
	ADXL313_MEAS = 1
};

/**
 * @enum adxl313_range
 * @brief Enum for selecting range.
 */
enum adxl313_range 
{
	ADXL313_0_5G_RANGE = 0,
	ADXL313_1G_RANGE = 1,
	ADXL313_2G_RANGE = 2,
	ADXL313_4G_RANGE = 3
};

/**
 * @enum adxl313_resolution
 * @brief Enum for specifying resolution:
 * 			- (0) default resolution 10-bit
 * 			- (1) full resolution:
 * 				- 10-bit for 0.5g range
 * 				- 11-bit for 1g range
 * 				- 12-bit for 2g range
 * 				- 13-bit for 4g range
 */
enum adxl313_resolution 
{
	ADXL313_DEFAULT_RES = 0,
	ADXL313_FULL_RES = 1
};

/**
 * @enum adxl313_axis
 * @brief Enum for accelerometer axis.
 */
enum adxl313_axis 
{
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

	/** Scale factor multiplier for data conversion to g */
	double scale_factor_mult;

	// /** Buffer used for communication with ADXL313 */
	// volatile uint8_t comm_buff[8];

	/* x, y, and z axis readings of the accelerometer */
	double x, y, z; 

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

/******************************************************************************
Function Prototypes
******************************************************************************/

extern bool begin(adxl313_dev *dev, enum adxl313_comm_type comm_type, 
 									enum adxl313_range range, enum adxl313_resolution resolution, 
 									uint16_t odr);

extern bool data_ready(adxl313_dev *dev);

extern void update_int_source_status(adxl313_dev *dev);

extern void set_data_format(adxl313_dev *dev, enum adxl313_range range, enum adxl313_resolution resolution);
 
extern void measure_mode_on(adxl313_dev *dev);
 
extern void soft_reset(adxl313_dev *dev);
 
extern void standby(adxl313_dev *dev);
 
extern void read_accel(adxl313_dev *dev);
  
extern void auto_sleep_on(adxl313_dev *dev);
extern void auto_sleep_off(adxl313_dev *dev);

extern float get_range(adxl313_dev *dev);
extern void set_range(adxl313_dev *dev, uint8_t range);
extern bool get_self_test_bit(adxl313_dev *dev);
extern void set_self_test_bit(adxl313_dev *dev, bool self_test_bit);
extern bool get_spi_bit(adxl313_dev *dev);
extern void set_spi_bit(adxl313_dev *dev, bool spi_bit);
extern bool get_interrupt_level_bit(adxl313_dev *dev);
extern void set_interrupt_level_bit(adxl313_dev *dev, bool interrupt_level_bit);
extern bool get_full_res_bit(adxl313_dev *dev);
extern void set_full_res_bit(adxl313_dev *dev, bool full_res_bit);
extern bool get_justify_bit(adxl313_dev *dev);
extern void set_justify_bit(adxl313_dev *dev, bool justify_bit);

extern bool get_low_power_bit(adxl313_dev *dev);
extern void set_low_power_bit(adxl313_dev *dev, bool low_power_bit);
extern double get_rate(adxl313_dev *dev);
extern void set_rate(adxl313_dev *dev, double rate);
 
extern uint8_t get_int_source(adxl313_dev *dev);
extern bool get_int_source_bit(adxl313_dev *dev, uint8_t interrupt_bit);
extern bool get_int_mapping_bit(adxl313_dev *dev, uint8_t interrupt_bit);
extern void set_int_mapping(adxl313_dev *dev, uint8_t interrupt_bit, bool interrupt_pin);
extern bool get_int(adxl313_dev *dev, uint8_t interrupt_bit);
extern void set_int(adxl313_dev *dev, uint8_t interrupt_bit, bool state);

extern uint8_t get_fifo_mode(adxl313_dev *dev);
extern void set_fifo_mode(adxl313_dev *dev, uint8_t mode);
extern void set_fifo_famples_threshhold(adxl313_dev *dev, uint8_t samples);
extern uint8_t get_fifo_famples_threshhold(adxl313_dev *dev);
extern uint8_t get_fifo_entries_amount(adxl313_dev *dev);
extern void clear_fifo(adxl313_dev *dev);
 
extern void set_axis_gains(adxl313_dev *dev, const double *_gains);
extern void get_axis_gains(adxl313_dev *dev, double *_gains);
extern void set_axis_offset(adxl313_dev *dev, const int x, const int y, const int z);
extern void get_axis_offset(adxl313_dev *dev, uint8_t* x, uint8_t* y, uint8_t*z);
extern void set_activity_threshold(adxl313_dev *dev, int activityThreshold);
extern uint8_t get_activity_threshold(adxl313_dev *dev);
extern void set_inactivity_threshold(adxl313_dev *dev, int inactivityThreshold);
extern uint8_t get_inactivity_threshold(adxl313_dev *dev);
extern void set_time_inactivity(adxl313_dev *dev, int timeInactivity);
extern uint8_t get_time_inactivity(adxl313_dev *dev);
 
extern bool get_activity_X(adxl313_dev *dev);
extern bool get_activity_Y(adxl313_dev *dev);
extern bool get_activity_Z(adxl313_dev *dev);
extern bool get_inactivity_X(adxl313_dev *dev);
extern bool get_inactivity_Y(adxl313_dev *dev);
extern bool get_inactivity_Z(adxl313_dev *dev);
extern bool get_activity_ac_dc(adxl313_dev *dev);
extern bool get_inactivity_ac_dc(adxl313_dev *dev);
extern void set_activity_ac_dc(adxl313_dev *dev, bool state);
extern void set_inactivity_ac_dc(adxl313_dev *dev, bool state);
extern void set_activity_X(adxl313_dev *dev, bool state);
extern void set_activity_Y(adxl313_dev *dev, bool state);
extern void set_activity_Z(adxl313_dev *dev, bool state);
extern void set_activity_X_Y_Z(adxl313_dev *dev, bool stateX, bool stateY, bool stateZ);
extern void set_inactivity_X(adxl313_dev *dev, bool state);
extern void set_inactivity_Y(adxl313_dev *dev, bool state);
extern void set_inactivity_Z(adxl313_dev *dev, bool state);
extern void set_inactivity_X_Y_Z(adxl313_dev *dev, bool stateX, bool stateY, bool stateZ);

#endif // _ADXL313_H_ //
