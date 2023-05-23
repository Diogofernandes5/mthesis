# ------------------------------------------------
# Makefile for stm32f7
#
# Author: Diogo Fernandes
# 
# 23 may 2023
# ------------------------------------------------

######################################
# target
######################################
TARGET = spi4_test

#######################################
# paths
#######################################
# Build path
BUILD_DIR = ./build
BIN_DIR = ./bin

CORE_SRC_DIR    = ../Core/Src
CORE_INC_DIR    = ../Core/Inc

DRIVERS_SRC_DIR = ../Drivers/STM32F7xx_HAL_Driver/Src
DRIVERS_INC_DIR = ../Drivers/STM32F7xx_HAL_Driver/Inc

CMSIS_INC_DIR   = ../Drivers/CMSIS/Device/ST/STM32F7xx/Include/


######################################
# source
######################################
# C sources
C_SOURCES =  \
$(wildcard $(CORE_SRC_DIR)/*.c*) \
$(wildcard $(DRIVERS_SRC_DIR)/*.c*) 

# ASM sources
ASM_SOURCES =  \
startup_stm32f767xx.s


#######################################
# binaries
#######################################
TOOLCHAIN_PREFIX = arm-none-eabi-

CC = $(TOOLCHAIN_PREFIX)gcc
CXX = $(TOOLCHAIN_PREFIX)g++
AS = $(TOOLCHAIN_PREFIX)gcc -x assembler-with-cpp
CP = $(TOOLCHAIN_PREFIX)objcopy
SZ = $(TOOLCHAIN_PREFIX)size


HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S

STF = st-flash
 
#######################################
# CFLAGS
#######################################
SERIAL_DEVICE = /dev/ttyACM0	

# cpu
CPU = -mcpu=cortex-m7

# fpu
FPU = -mfpu=fpv5-d16

# float-abi
FLOAT-ABI = -mfloat-abi=hard

# mcu
MCU = $(CPU) -mthumb $(FPU) $(FLOAT-ABI)

# macros for gcc
# AS defines
AS_DEFS = 

# C defines
C_DEFS =  \
-DUSE_HAL_DRIVER \
-DSTM32F767xx


# AS includes
AS_INCLUDES = 

# C includes
C_INCLUDES =  \
-I$(CORE_INC_DIR) \
-I$(DRIVERS_INC_DIR) \
-I$(CMSIS_INC_DIR) \
-I../Drivers/CMSIS/Include \

# compile gcc flags
# optimization flag
OPT = -Og
# debug flag
DEBUG = -g -gdwarf-2

ASFLAGS = $(MCU) $(AS_DEFS) $(AS_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

CFLAGS += $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) $(DEBUG) -Wall -fdata-sections -ffunction-sections

# Generate dependency information
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"


#######################################
# LDFLAGS
#######################################

# link script
LDSCRIPT = STM32F767ZITx_FLASH.ld

# libraries
LIBS = -lc -lm -lnosys 
LIBDIR = 
LDFLAGS = $(MCU) -specs=nano.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections

#######################################
# colors
#######################################
BLACK=`tput setaf 0`
RED=`tput setaf 1`
GREEN=`tput setaf 2`
YELLOW=`tput setaf 3`
BLUE=`tput setaf 4`
MAGENTA=`tput setaf 5`
CYAN=`tput setaf 6`
WHITE=`tput setaf 7`

BOLD=`tput bold`
RESET=`tput sgr0`

#######################################
# all
#######################################
# default action: build all
all: $(BIN_DIR)/$(TARGET).elf  $(BIN_DIR)/$(TARGET).hex  $(BIN_DIR)/$(TARGET).bin


#######################################
# build the application
#######################################

# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))

# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	@echo "$(YELLOW)Building $@...$(RESET)"
	@$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.c=.lst)) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	@echo "$(YELLOW)Building $@...$(RESET)"
	@$(AS) -c $(CFLAGS) $< -o $@

$(BIN_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	@echo "$(BLUE)Linking $@...$(RESET)"
	@$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	@$(SZ) $@

$(BIN_DIR)/%.hex: $(BIN_DIR)/%.elf | $(BIN_DIR)
	@echo "$(GREEN)Generating $@...$(RESET)"
	@$(HEX) $< $@
	
$(BIN_DIR)/%.bin: $(BIN_DIR)/%.elf | $(BIN_DIR)
	@echo "$(GREEN)Generating $@...$(RESET)"
	@$(BIN) $< $@	
	

#######################################
# clean up
#######################################
clean:
	@rm -fR $(BUILD_DIR)
	@mkdir $(BUILD_DIR)

#######################################
# flash
#######################################	
flash: $(BIN_DIR)/$(TARGET).bin
	@echo "$(GREEN)Flashing $< to STM32 on $(SERIAL_DEVICE)$(RESET)"
	@$(STF) write $< 0x8000000

#######################################
# dependencies
#######################################
-include $(wildcard $(BUILD_DIR)/*.d)

# *** EOF ***
