################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32h573iikxq.s 

OBJS += \
./Core/Startup/startup_stm32h573iikxq.o 

S_DEPS += \
./Core/Startup/startup_stm32h573iikxq.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/%.o: ../Core/Startup/%.s Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m33 -g3 -DDEBUG -c -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/PDM2PCM" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/PDM" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/PDM/_htmresc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/PDM/Debug" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/PDM/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/PDM/Lib" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace_2/Microphone/Debug" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Startup

clean-Core-2f-Startup:
	-$(RM) ./Core/Startup/startup_stm32h573iikxq.d ./Core/Startup/startup_stm32h573iikxq.o

.PHONY: clean-Core-2f-Startup

