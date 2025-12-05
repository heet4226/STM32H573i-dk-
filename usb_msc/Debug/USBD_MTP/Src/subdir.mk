################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USBD_MTP/Src/usbd_mtp.c \
../USBD_MTP/Src/usbd_mtp_if_template.c \
../USBD_MTP/Src/usbd_mtp_opt.c \
../USBD_MTP/Src/usbd_mtp_storage.c 

OBJS += \
./USBD_MTP/Src/usbd_mtp.o \
./USBD_MTP/Src/usbd_mtp_if_template.o \
./USBD_MTP/Src/usbd_mtp_opt.o \
./USBD_MTP/Src/usbd_mtp_storage.o 

C_DEPS += \
./USBD_MTP/Src/usbd_mtp.d \
./USBD_MTP/Src/usbd_mtp_if_template.d \
./USBD_MTP/Src/usbd_mtp_opt.d \
./USBD_MTP/Src/usbd_mtp_storage.d 


# Each subdirectory must supply rules for building sources it contributes
USBD_MTP/Src/%.o USBD_MTP/Src/%.su USBD_MTP/Src/%.cyclo: ../USBD_MTP/Src/%.c USBD_MTP/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -DFX_INCLUDE_USER_DEFINE_FILE -c -I../Core/Inc -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/CompositeBuilder/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/Drivers/STM32H5xx_HAL_Driver/Src" -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/Drivers/STM32H5xx_HAL_Driver/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_HID/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_HID/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/Core" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/Core/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/Core/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_HID" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/CompositeBuilder" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/CompositeBuilder/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/CompositeBuilder/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MTP" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MTP/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MTP/Src" -I../FileX/App -I../FileX/Target -I../Middlewares/ST/filex/common/inc -I../Middlewares/ST/filex/ports/generic/inc -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_DFU" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_DFU/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_DFU/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_AUDIO" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_AUDIO/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_AUDIO/Src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-USBD_MTP-2f-Src

clean-USBD_MTP-2f-Src:
	-$(RM) ./USBD_MTP/Src/usbd_mtp.cyclo ./USBD_MTP/Src/usbd_mtp.d ./USBD_MTP/Src/usbd_mtp.o ./USBD_MTP/Src/usbd_mtp.su ./USBD_MTP/Src/usbd_mtp_if_template.cyclo ./USBD_MTP/Src/usbd_mtp_if_template.d ./USBD_MTP/Src/usbd_mtp_if_template.o ./USBD_MTP/Src/usbd_mtp_if_template.su ./USBD_MTP/Src/usbd_mtp_opt.cyclo ./USBD_MTP/Src/usbd_mtp_opt.d ./USBD_MTP/Src/usbd_mtp_opt.o ./USBD_MTP/Src/usbd_mtp_opt.su ./USBD_MTP/Src/usbd_mtp_storage.cyclo ./USBD_MTP/Src/usbd_mtp_storage.d ./USBD_MTP/Src/usbd_mtp_storage.o ./USBD_MTP/Src/usbd_mtp_storage.su

.PHONY: clean-USBD_MTP-2f-Src

