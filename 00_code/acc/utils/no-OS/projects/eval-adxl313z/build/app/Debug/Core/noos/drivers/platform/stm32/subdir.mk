################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/noos/drivers/platform/stm32/stm32_delay.c \
../Core/noos/drivers/platform/stm32/stm32_gpio.c \
../Core/noos/drivers/platform/stm32/stm32_irq.c \
../Core/noos/drivers/platform/stm32/stm32_spi.c \
../Core/noos/drivers/platform/stm32/stm32_uart.c \
../Core/noos/drivers/platform/stm32/stm32_uart_stdio.c 

OBJS += \
./Core/noos/drivers/platform/stm32/stm32_delay.o \
./Core/noos/drivers/platform/stm32/stm32_gpio.o \
./Core/noos/drivers/platform/stm32/stm32_irq.o \
./Core/noos/drivers/platform/stm32/stm32_spi.o \
./Core/noos/drivers/platform/stm32/stm32_uart.o \
./Core/noos/drivers/platform/stm32/stm32_uart_stdio.o 

C_DEPS += \
./Core/noos/drivers/platform/stm32/stm32_delay.d \
./Core/noos/drivers/platform/stm32/stm32_gpio.d \
./Core/noos/drivers/platform/stm32/stm32_irq.d \
./Core/noos/drivers/platform/stm32/stm32_spi.d \
./Core/noos/drivers/platform/stm32/stm32_uart.d \
./Core/noos/drivers/platform/stm32/stm32_uart_stdio.d 


# Each subdirectory must supply rules for building sources it contributes
Core/noos/drivers/platform/stm32/%.o Core/noos/drivers/platform/stm32/%.su: ../Core/noos/drivers/platform/stm32/%.c Core/noos/drivers/platform/stm32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -D_USE_STD_INT_TYPES -DUSE_HAL_DRIVER -D_USE_STD_INT_TYPES -DTINYIIOD_VERSION_MINOR=1 -DTINYIIOD_VERSION_MAJOR=0 -DTINYIIOD_VERSION_GIT=0x440e425 -DSTM32_PLATFORM -DSTM32F401xE -DIIO_SUPPORT -DIIO_EXAMPLE=1 -DIIOD_BUFFER_SIZE=0x1000 -DDISABLE_SECURE_SOCKET -DDEBUG -DSTM32F401xE -c -I../Core/Inc -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/noos/include -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/noos/iio/iio_app/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/noos/iio/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/noos/drivers/platform/stm32/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/noos/drivers/accel/adxl313/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/eval-adxl313z/src/platform/stm32/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/eval-adxl313z/src/platform/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/eval-adxl313z/src/examples/iio_example/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/eval-adxl313z/src/common/ -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-noos-2f-drivers-2f-platform-2f-stm32

clean-Core-2f-noos-2f-drivers-2f-platform-2f-stm32:
	-$(RM) ./Core/noos/drivers/platform/stm32/stm32_delay.d ./Core/noos/drivers/platform/stm32/stm32_delay.o ./Core/noos/drivers/platform/stm32/stm32_delay.su ./Core/noos/drivers/platform/stm32/stm32_gpio.d ./Core/noos/drivers/platform/stm32/stm32_gpio.o ./Core/noos/drivers/platform/stm32/stm32_gpio.su ./Core/noos/drivers/platform/stm32/stm32_irq.d ./Core/noos/drivers/platform/stm32/stm32_irq.o ./Core/noos/drivers/platform/stm32/stm32_irq.su ./Core/noos/drivers/platform/stm32/stm32_spi.d ./Core/noos/drivers/platform/stm32/stm32_spi.o ./Core/noos/drivers/platform/stm32/stm32_spi.su ./Core/noos/drivers/platform/stm32/stm32_uart.d ./Core/noos/drivers/platform/stm32/stm32_uart.o ./Core/noos/drivers/platform/stm32/stm32_uart.su ./Core/noos/drivers/platform/stm32/stm32_uart_stdio.d ./Core/noos/drivers/platform/stm32/stm32_uart_stdio.o ./Core/noos/drivers/platform/stm32/stm32_uart_stdio.su

.PHONY: clean-Core-2f-noos-2f-drivers-2f-platform-2f-stm32

