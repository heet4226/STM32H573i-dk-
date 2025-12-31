################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/apps/http/makefsdata/makefsdata.c 

OBJS += \
./src/apps/http/makefsdata/makefsdata.o 

C_DEPS += \
./src/apps/http/makefsdata/makefsdata.d 


# Each subdirectory must supply rules for building sources it contributes
src/apps/http/makefsdata/%.o src/apps/http/makefsdata/%.su src/apps/http/makefsdata/%.cyclo: ../src/apps/http/makefsdata/%.c src/apps/http/makefsdata/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -c -I../Core/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/lwip" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/lwip/app" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/lwip/target" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/src/include" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/system" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/system/arch" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip2/Drivers/BSP" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-src-2f-apps-2f-http-2f-makefsdata

clean-src-2f-apps-2f-http-2f-makefsdata:
	-$(RM) ./src/apps/http/makefsdata/makefsdata.cyclo ./src/apps/http/makefsdata/makefsdata.d ./src/apps/http/makefsdata/makefsdata.o ./src/apps/http/makefsdata/makefsdata.su

.PHONY: clean-src-2f-apps-2f-http-2f-makefsdata

