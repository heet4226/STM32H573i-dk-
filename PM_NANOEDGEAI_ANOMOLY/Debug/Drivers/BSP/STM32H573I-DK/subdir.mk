################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/STM32H573I-DK/stm32h573i_discovery.c \
../Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_bus.c \
../Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_lcd.c \
../Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ospi.c \
../Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ts.c 

OBJS += \
./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery.o \
./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_bus.o \
./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_lcd.o \
./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ospi.o \
./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ts.o 

C_DEPS += \
./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery.d \
./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_bus.d \
./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_lcd.d \
./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ospi.d \
./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ts.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32H573I-DK/%.o Drivers/BSP/STM32H573I-DK/%.su Drivers/BSP/STM32H573I-DK/%.cyclo: ../Drivers/BSP/STM32H573I-DK/%.c Drivers/BSP/STM32H573I-DK/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -c -I../Core/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H573I-DK -I../Drivers/BSP/Components/Common -I../Drivers/BSP/Components/st7789h2 -I../Drivers/BSP/Components/ft6x06 -I../Utilities/lcd -I../Utilities/Fonts -I../Drivers/BSP/Components/mx25lm51245g -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/PM_ANOMALY/Drivers/NANOEDGEAI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32H573I-2d-DK

clean-Drivers-2f-BSP-2f-STM32H573I-2d-DK:
	-$(RM) ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery.cyclo ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery.d ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery.o ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery.su ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_bus.cyclo ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_bus.d ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_bus.o ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_bus.su ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_lcd.cyclo ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_lcd.d ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_lcd.o ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_lcd.su ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ospi.cyclo ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ospi.d ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ospi.o ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ospi.su ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ts.cyclo ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ts.d ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ts.o ./Drivers/BSP/STM32H573I-DK/stm32h573i_discovery_ts.su

.PHONY: clean-Drivers-2f-BSP-2f-STM32H573I-2d-DK

