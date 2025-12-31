################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/app/http_ssi.c \
../lwip/app/lwip.c \
../lwip/app/webpage.c 

OBJS += \
./lwip/app/http_ssi.o \
./lwip/app/lwip.o \
./lwip/app/webpage.o 

C_DEPS += \
./lwip/app/http_ssi.d \
./lwip/app/lwip.d \
./lwip/app/webpage.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/app/%.o lwip/app/%.su lwip/app/%.cyclo: ../lwip/app/%.c lwip/app/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -c -I../Core/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/lwip" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/lwip/app" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/lwip/target" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/src/include" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/system" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/system/arch" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/Drivers/BSP" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/src/apps/sntp" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/src/include/lwip/apps" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lwip-2f-app

clean-lwip-2f-app:
	-$(RM) ./lwip/app/http_ssi.cyclo ./lwip/app/http_ssi.d ./lwip/app/http_ssi.o ./lwip/app/http_ssi.su ./lwip/app/lwip.cyclo ./lwip/app/lwip.d ./lwip/app/lwip.o ./lwip/app/lwip.su ./lwip/app/webpage.cyclo ./lwip/app/webpage.d ./lwip/app/webpage.o ./lwip/app/webpage.su

.PHONY: clean-lwip-2f-app

