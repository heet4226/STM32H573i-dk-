################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/apps/netbiosns/netbiosns.c 

OBJS += \
./src/apps/netbiosns/netbiosns.o 

C_DEPS += \
./src/apps/netbiosns/netbiosns.d 


# Each subdirectory must supply rules for building sources it contributes
src/apps/netbiosns/%.o src/apps/netbiosns/%.su src/apps/netbiosns/%.cyclo: ../src/apps/netbiosns/%.c src/apps/netbiosns/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -c -I../Core/Inc -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/Drivers/BSP" -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H573I-DK -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/lwip" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/lwip/app" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/lwip/target" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/src/include" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/system" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/system/arch" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-src-2f-apps-2f-netbiosns

clean-src-2f-apps-2f-netbiosns:
	-$(RM) ./src/apps/netbiosns/netbiosns.cyclo ./src/apps/netbiosns/netbiosns.d ./src/apps/netbiosns/netbiosns.o ./src/apps/netbiosns/netbiosns.su

.PHONY: clean-src-2f-apps-2f-netbiosns

