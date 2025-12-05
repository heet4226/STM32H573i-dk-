################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USBD_MSC/Core/Src/usbd_conf.c \
../USBD_MSC/Core/Src/usbd_core.c \
../USBD_MSC/Core/Src/usbd_ctlreq.c \
../USBD_MSC/Core/Src/usbd_desc.c \
../USBD_MSC/Core/Src/usbd_ioreq.c 

OBJS += \
./USBD_MSC/Core/Src/usbd_conf.o \
./USBD_MSC/Core/Src/usbd_core.o \
./USBD_MSC/Core/Src/usbd_ctlreq.o \
./USBD_MSC/Core/Src/usbd_desc.o \
./USBD_MSC/Core/Src/usbd_ioreq.o 

C_DEPS += \
./USBD_MSC/Core/Src/usbd_conf.d \
./USBD_MSC/Core/Src/usbd_core.d \
./USBD_MSC/Core/Src/usbd_ctlreq.d \
./USBD_MSC/Core/Src/usbd_desc.d \
./USBD_MSC/Core/Src/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
USBD_MSC/Core/Src/%.o USBD_MSC/Core/Src/%.su USBD_MSC/Core/Src/%.cyclo: ../USBD_MSC/Core/Src/%.c USBD_MSC/Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -c -I../Core/Inc -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/Drivers/STM32H5xx_HAL_Driver/Src" -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/Core" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/Core/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/Core/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/MSC" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/MSC/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/MSC/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/Drivers/STM32H5xx_HAL_Driver/Src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-USBD_MSC-2f-Core-2f-Src

clean-USBD_MSC-2f-Core-2f-Src:
	-$(RM) ./USBD_MSC/Core/Src/usbd_conf.cyclo ./USBD_MSC/Core/Src/usbd_conf.d ./USBD_MSC/Core/Src/usbd_conf.o ./USBD_MSC/Core/Src/usbd_conf.su ./USBD_MSC/Core/Src/usbd_core.cyclo ./USBD_MSC/Core/Src/usbd_core.d ./USBD_MSC/Core/Src/usbd_core.o ./USBD_MSC/Core/Src/usbd_core.su ./USBD_MSC/Core/Src/usbd_ctlreq.cyclo ./USBD_MSC/Core/Src/usbd_ctlreq.d ./USBD_MSC/Core/Src/usbd_ctlreq.o ./USBD_MSC/Core/Src/usbd_ctlreq.su ./USBD_MSC/Core/Src/usbd_desc.cyclo ./USBD_MSC/Core/Src/usbd_desc.d ./USBD_MSC/Core/Src/usbd_desc.o ./USBD_MSC/Core/Src/usbd_desc.su ./USBD_MSC/Core/Src/usbd_ioreq.cyclo ./USBD_MSC/Core/Src/usbd_ioreq.d ./USBD_MSC/Core/Src/usbd_ioreq.o ./USBD_MSC/Core/Src/usbd_ioreq.su

.PHONY: clean-USBD_MSC-2f-Core-2f-Src

