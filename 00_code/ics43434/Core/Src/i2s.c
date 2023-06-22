

int _gpioToAdcUnit(gpio_num_t gpio_num, esp_i2s::adc_unit_t* adc_unit);
int _gpioToAdcChannel(gpio_num_t gpio_num, esp_i2s::adc_channel_t* adc_channel);

int begin(int mode, int sampleRate, int bitsPerSample, bool driveClock);

int _enableTransmitter();
int _enableReceiver();
void _onTransferComplete();

int _createCallbackTask();

static void onDmaTransferComplete(void*);
int _installDriver();
void _uninstallDriver();
void _setSckPin(int sckPin);
void _setFsPin(int fsPin);
void _setDataPin(int sdPin);
void _setDataOutPin(int outSdPin);
void _setDataInPin(int inSdPin);
int  _applyPinSetting();

void _tx_done_routine(uint8_t* prev_item);
void _rx_done_routine();

uint16_t _nesting_counter;
void _take_if_not_holding();
void _give_if_top_call();
void _post_read_data_fix(void *input, size_t *size);
void _fix_and_write(void *output, size_t size, size_t *bytes_written = NULL, size_t *actual_bytes_written = NULL);

void (*_onTransmit)(void);
void (*_onReceive)(void);