################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/lan8742.c 

OBJS += \
./Drivers/BSP/lan8742.o 

C_DEPS += \
./Drivers/BSP/lan8742.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/%.o Drivers/BSP/%.su Drivers/BSP/%.cyclo: ../Drivers/BSP/%.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -c -I../Core/Inc -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/Drivers/BSP" -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H573I-DK -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/lwip" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/lwip/app" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/lwip/target" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/src/include" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/system" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/system/arch" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP

clean-Drivers-2f-BSP:
	-$(RM) ./Drivers/BSP/lan8742.cyclo ./Drivers/BSP/lan8742.d ./Drivers/BSP/lan8742.o ./Drivers/BSP/lan8742.su

.PHONY: clean-Drivers-2f-BSP

