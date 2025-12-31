################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../WIFI/core/checksumutils.c \
../WIFI/core/mx_address.c \
../WIFI/core/mx_rtos_abs.c \
../WIFI/core/mx_wifi_hci.c \
../WIFI/core/mx_wifi_ipc.c \
../WIFI/core/mx_wifi_slip.c 

OBJS += \
./WIFI/core/checksumutils.o \
./WIFI/core/mx_address.o \
./WIFI/core/mx_rtos_abs.o \
./WIFI/core/mx_wifi_hci.o \
./WIFI/core/mx_wifi_ipc.o \
./WIFI/core/mx_wifi_slip.o 

C_DEPS += \
./WIFI/core/checksumutils.d \
./WIFI/core/mx_address.d \
./WIFI/core/mx_rtos_abs.d \
./WIFI/core/mx_wifi_hci.d \
./WIFI/core/mx_wifi_ipc.d \
./WIFI/core/mx_wifi_slip.d 


# Each subdirectory must supply rules for building sources it contributes
WIFI/core/%.o WIFI/core/%.su WIFI/core/%.cyclo: ../WIFI/core/%.c WIFI/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -c -I../Core/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H573I-DK -I../Drivers/BSP/Components/Common -I../Drivers/BSP/Components/cs42l51 -I../Drivers/BSP/Components/st7789h2 -I../Drivers/BSP/Components/ft6x06 -I../Utilities/lcd -I../Utilities/Fonts -I../Drivers/BSP/Components/mx25lm51245g -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/wifi2/WIFI" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/wifi2/WIFI/core" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/wifi2/WIFI/io_pattern" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-WIFI-2f-core

clean-WIFI-2f-core:
	-$(RM) ./WIFI/core/checksumutils.cyclo ./WIFI/core/checksumutils.d ./WIFI/core/checksumutils.o ./WIFI/core/checksumutils.su ./WIFI/core/mx_address.cyclo ./WIFI/core/mx_address.d ./WIFI/core/mx_address.o ./WIFI/core/mx_address.su ./WIFI/core/mx_rtos_abs.cyclo ./WIFI/core/mx_rtos_abs.d ./WIFI/core/mx_rtos_abs.o ./WIFI/core/mx_rtos_abs.su ./WIFI/core/mx_wifi_hci.cyclo ./WIFI/core/mx_wifi_hci.d ./WIFI/core/mx_wifi_hci.o ./WIFI/core/mx_wifi_hci.su ./WIFI/core/mx_wifi_ipc.cyclo ./WIFI/core/mx_wifi_ipc.d ./WIFI/core/mx_wifi_ipc.o ./WIFI/core/mx_wifi_ipc.su ./WIFI/core/mx_wifi_slip.cyclo ./WIFI/core/mx_wifi_slip.d ./WIFI/core/mx_wifi_slip.o ./WIFI/core/mx_wifi_slip.su

.PHONY: clean-WIFI-2f-core

