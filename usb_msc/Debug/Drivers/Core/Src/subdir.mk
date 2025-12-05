################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Core/Src/usbd_conf_template.c \
../Drivers/Core/Src/usbd_core.c \
../Drivers/Core/Src/usbd_ctlreq.c \
../Drivers/Core/Src/usbd_desc_template.c \
../Drivers/Core/Src/usbd_ioreq.c 

OBJS += \
./Drivers/Core/Src/usbd_conf_template.o \
./Drivers/Core/Src/usbd_core.o \
./Drivers/Core/Src/usbd_ctlreq.o \
./Drivers/Core/Src/usbd_desc_template.o \
./Drivers/Core/Src/usbd_ioreq.o 

C_DEPS += \
./Drivers/Core/Src/usbd_conf_template.d \
./Drivers/Core/Src/usbd_core.d \
./Drivers/Core/Src/usbd_ctlreq.d \
./Drivers/Core/Src/usbd_desc_template.d \
./Drivers/Core/Src/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Core/Src/%.o Drivers/Core/Src/%.su Drivers/Core/Src/%.cyclo: ../Drivers/Core/Src/%.c Drivers/Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -c -I../Core/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/Core" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/Core/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/Core/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/MSC" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/MSC/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/MSC/Src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-Core-2f-Src

clean-Drivers-2f-Core-2f-Src:
	-$(RM) ./Drivers/Core/Src/usbd_conf_template.cyclo ./Drivers/Core/Src/usbd_conf_template.d ./Drivers/Core/Src/usbd_conf_template.o ./Drivers/Core/Src/usbd_conf_template.su ./Drivers/Core/Src/usbd_core.cyclo ./Drivers/Core/Src/usbd_core.d ./Drivers/Core/Src/usbd_core.o ./Drivers/Core/Src/usbd_core.su ./Drivers/Core/Src/usbd_ctlreq.cyclo ./Drivers/Core/Src/usbd_ctlreq.d ./Drivers/Core/Src/usbd_ctlreq.o ./Drivers/Core/Src/usbd_ctlreq.su ./Drivers/Core/Src/usbd_desc_template.cyclo ./Drivers/Core/Src/usbd_desc_template.d ./Drivers/Core/Src/usbd_desc_template.o ./Drivers/Core/Src/usbd_desc_template.su ./Drivers/Core/Src/usbd_ioreq.cyclo ./Drivers/Core/Src/usbd_ioreq.d ./Drivers/Core/Src/usbd_ioreq.o ./Drivers/Core/Src/usbd_ioreq.su

.PHONY: clean-Drivers-2f-Core-2f-Src

