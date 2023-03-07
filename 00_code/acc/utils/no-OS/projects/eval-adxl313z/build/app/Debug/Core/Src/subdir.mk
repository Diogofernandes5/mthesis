################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/generated_main.c \
../Core/Src/stm32_gpio_irq_generated.c \
../Core/Src/stm32f4xx_hal_msp.c \
../Core/Src/stm32f4xx_it.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f4xx.c 

OBJS += \
./Core/Src/generated_main.o \
./Core/Src/stm32_gpio_irq_generated.o \
./Core/Src/stm32f4xx_hal_msp.o \
./Core/Src/stm32f4xx_it.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f4xx.o 

C_DEPS += \
./Core/Src/generated_main.d \
./Core/Src/stm32_gpio_irq_generated.d \
./Core/Src/stm32f4xx_hal_msp.d \
./Core/Src/stm32f4xx_it.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -D_USE_STD_INT_TYPES -DUSE_HAL_DRIVER -D_USE_STD_INT_TYPES -DTINYIIOD_VERSION_MINOR=1 -DTINYIIOD_VERSION_MAJOR=0 -DTINYIIOD_VERSION_GIT=0x440e425 -DSTM32_PLATFORM -DSTM32F401xE -DIIO_SUPPORT -DIIO_EXAMPLE=1 -DIIOD_BUFFER_SIZE=0x1000 -DDISABLE_SECURE_SOCKET -DDEBUG -DSTM32F401xE -c -I../Core/Inc -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/noos/include -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/noos/iio/iio_app/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/noos/iio/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/noos/drivers/platform/stm32/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/noos/drivers/accel/adxl313/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/eval-adxl313z/src/platform/stm32/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/eval-adxl313z/src/platform/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/eval-adxl313z/src/examples/iio_example/ -I/home/fernandes/thesis/00_code/acc/no-OS/projects/eval-adxl313z/build/app/Core/eval-adxl313z/src/common/ -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/generated_main.d ./Core/Src/generated_main.o ./Core/Src/generated_main.su ./Core/Src/stm32_gpio_irq_generated.d ./Core/Src/stm32_gpio_irq_generated.o ./Core/Src/stm32_gpio_irq_generated.su ./Core/Src/stm32f4xx_hal_msp.d ./Core/Src/stm32f4xx_hal_msp.o ./Core/Src/stm32f4xx_hal_msp.su ./Core/Src/stm32f4xx_it.d ./Core/Src/stm32f4xx_it.o ./Core/Src/stm32f4xx_it.su ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32f4xx.d ./Core/Src/system_stm32f4xx.o ./Core/Src/system_stm32f4xx.su

.PHONY: clean-Core-2f-Src

