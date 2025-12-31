################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../PDM2PCM/pdm2pcm.c 

OBJS += \
./PDM2PCM/pdm2pcm.o 

C_DEPS += \
./PDM2PCM/pdm2pcm.d 


# Each subdirectory must supply rules for building sources it contributes
PDM2PCM/%.o PDM2PCM/%.su PDM2PCM/%.cyclo: ../PDM2PCM/%.c PDM2PCM/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -c -I../Core/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/PDM2PCM" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/PDM" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/PDM/_htmresc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/PDM/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/PDM/Lib" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/Debug" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-PDM2PCM

clean-PDM2PCM:
	-$(RM) ./PDM2PCM/pdm2pcm.cyclo ./PDM2PCM/pdm2pcm.d ./PDM2PCM/pdm2pcm.o ./PDM2PCM/pdm2pcm.su

.PHONY: clean-PDM2PCM

