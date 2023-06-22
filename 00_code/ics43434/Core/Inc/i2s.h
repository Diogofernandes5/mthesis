/**
 * @file     i2s.h
 * @author   Diogo Fernandes (diogo.cf20@gmail.com)
 * */

#ifndef _I2S_H_
#define _I2S_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <Arduino.h>
#include "freertos/ringbuf.h"

// namespace esp_i2s {
//   #include "driver/i2s.h" // ESP specific i2s driver
// }

// Default pins
#ifndef PIN_I2S_SCK
  #define PIN_I2S_SCK 14
#endif

#ifndef PIN_I2S_FS
  #if CONFIG_IDF_TARGET_ESP32S2
    #define PIN_I2S_FS 27
  #else
    #define PIN_I2S_FS 25
  #endif
#endif

#ifndef PIN_I2S_SD
  #define PIN_I2S_SD 26
#endif

#ifndef PIN_I2S_SD_OUT
  #define PIN_I2S_SD_OUT 26
#endif

#ifndef PIN_I2S_SD_IN
  #define PIN_I2S_SD_IN 35 // Pin 35 is only input!
#endif

typedef enum 
{
  I2S_PHILIPS_MODE,
  I2S_RIGHT_JUSTIFIED_MODE,
  I2S_LEFT_JUSTIFIED_MODE,
  ADC_DAC_MODE,
  PDM_STEREO_MODE,
  PDM_MONO_MODE
} i2s_mode_t;

typedef enum 
{
  I2S_STATE_IDLE,
  I2S_STATE_TRANSMITTER,
  I2S_STATE_RECEIVER,
  I2S_STATE_DUPLEX
} i2s_state_t;


typedef struct __i2s_dev
{
  int deviceIndex;

  GPIO_TypeDef* SD_port;
  uint16_t SD_pin;

  GPIO_TypeDef* CS_port;
  uint16_t CS_pin;
  
  int sdPin;
  int inSdPin;
  int outSdPin;
  int sckPin;
  int fsPin;

  i2s_state_t state;
  int bitsPerSample;
  uint32_t sampleRate;
  int mode;

  uint16_t buffer_byte_size;

  bool driverInstalled; // Is IDF I2S driver installed?
  bool initialized; // Is everything initialized (callback task, I2S driver, ring buffers)?

  int i2s_dma_buffer_size;
  bool driveClock;
  uint32_t peek_buff;
  bool peek_buff_valid;

} i2s_dev;

// The device index and pins must map to the "COM" pads in Table 6-1 of the datasheet
I2SClass(uint8_t deviceIndex, uint8_t clockGenerator, uint8_t sdPin, uint8_t sckPin, uint8_t fsPin);

// Init in MASTER mode: the SCK and FS pins are driven as outputs using the sample rate
int begin(int mode, int sampleRate, int bitsPerSample);

// Init in SLAVE mode: the SCK and FS pins are inputs, other side controls sample rate
int begin(int mode, int bitsPerSample);

// change pin setup and mode (default is Half Duplex)
// Can be called only on initialized object (after begin)
int setSckPin(int sckPin);
int setFsPin(int fsPin);
int setDataPin(int sdPin); // shared data pin for simplex
int setDataOutPin(int outSdPin);
int setDataInPin(int inSdPin);

int setAllPins();
int setAllPins(int sckPin, int fsPin, int sdPin, int outSdPin, int inSdPin);

int getSckPin();
int getFsPin();
int getDataPin();
int getDataOutPin();
int getDataInPin();

int setDuplex();
int setSimplex();
int isDuplex();

void end();

// from Stream
virtual int available();
virtual int read();
virtual int peek();
virtual void flush();

// from Print
virtual size_t write(uint8_t);
virtual size_t write(const uint8_t *buffer, size_t size);

virtual int availableForWrite();

int read(void* buffer, size_t size);

//size_t write(int);
size_t write(int32_t);
size_t write(const void *buffer, size_t size);
size_t write_blocking(const void *buffer, size_t size);
size_t write_nonblocking(const void *buffer, size_t size);

void onTransmit(void(*)(void));
void onReceive(void(*)(void));

int setBufferSize(int bufferSize);
int getBufferSize();

#ifdef __cplusplus
}
#endif

#endif /* _I2S_H_ */
