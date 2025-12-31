################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../WIFI/mx_wifi.c 

OBJS += \
./WIFI/mx_wifi.o 

C_DEPS += \
./WIFI/mx_wifi.d 


# Each subdirectory must supply rules for building sources it contributes
WIFI/%.o WIFI/%.su WIFI/%.cyclo: ../WIFI/%.c WIFI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -c -I../Core/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H573I-DK -I../Drivers/BSP/Components/Common -I../Drivers/BSP/Components/cs42l51 -I../Drivers/BSP/Components/st7789h2 -I../Drivers/BSP/Components/ft6x06 -I../Utilities/lcd -I../Utilities/Fonts -I../Drivers/BSP/Components/mx25lm51245g -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/wifi2/WIFI" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/wifi2/WIFI/core" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/wifi2/WIFI/io_pattern" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-WIFI

clean-WIFI:
	-$(RM) ./WIFI/mx_wifi.cyclo ./WIFI/mx_wifi.d ./WIFI/mx_wifi.o ./WIFI/mx_wifi.su

.PHONY: clean-WIFI

