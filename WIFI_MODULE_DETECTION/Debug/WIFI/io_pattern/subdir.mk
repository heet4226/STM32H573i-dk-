################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../WIFI/io_pattern/mx_wifi_spi.c 

OBJS += \
./WIFI/io_pattern/mx_wifi_spi.o 

C_DEPS += \
./WIFI/io_pattern/mx_wifi_spi.d 


# Each subdirectory must supply rules for building sources it contributes
WIFI/io_pattern/%.o WIFI/io_pattern/%.su WIFI/io_pattern/%.cyclo: ../WIFI/io_pattern/%.c WIFI/io_pattern/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -c -I../Core/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H573I-DK -I../Drivers/BSP/Components/Common -I../Drivers/BSP/Components/cs42l51 -I../Drivers/BSP/Components/st7789h2 -I../Drivers/BSP/Components/ft6x06 -I../Utilities/lcd -I../Utilities/Fonts -I../Drivers/BSP/Components/mx25lm51245g -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/wifi2/WIFI" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/wifi2/WIFI/core" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/wifi2/WIFI/io_pattern" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-WIFI-2f-io_pattern

clean-WIFI-2f-io_pattern:
	-$(RM) ./WIFI/io_pattern/mx_wifi_spi.cyclo ./WIFI/io_pattern/mx_wifi_spi.d ./WIFI/io_pattern/mx_wifi_spi.o ./WIFI/io_pattern/mx_wifi_spi.su

.PHONY: clean-WIFI-2f-io_pattern

