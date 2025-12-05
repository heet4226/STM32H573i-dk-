################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USBD_MSC/Src/usbd_msc.c \
../USBD_MSC/Src/usbd_msc_bot.c \
../USBD_MSC/Src/usbd_msc_data.c \
../USBD_MSC/Src/usbd_msc_scsi.c \
../USBD_MSC/Src/usbd_msc_storage_template.c 

OBJS += \
./USBD_MSC/Src/usbd_msc.o \
./USBD_MSC/Src/usbd_msc_bot.o \
./USBD_MSC/Src/usbd_msc_data.o \
./USBD_MSC/Src/usbd_msc_scsi.o \
./USBD_MSC/Src/usbd_msc_storage_template.o 

C_DEPS += \
./USBD_MSC/Src/usbd_msc.d \
./USBD_MSC/Src/usbd_msc_bot.d \
./USBD_MSC/Src/usbd_msc_data.d \
./USBD_MSC/Src/usbd_msc_scsi.d \
./USBD_MSC/Src/usbd_msc_storage_template.d 


# Each subdirectory must supply rules for building sources it contributes
USBD_MSC/Src/%.o USBD_MSC/Src/%.su USBD_MSC/Src/%.cyclo: ../USBD_MSC/Src/%.c USBD_MSC/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -DFX_INCLUDE_USER_DEFINE_FILE -c -I../Core/Inc -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/CompositeBuilder/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/Drivers/STM32H5xx_HAL_Driver/Src" -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/Drivers/STM32H5xx_HAL_Driver/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_HID/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_HID/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/Core" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/Core/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/Core/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_HID" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/CompositeBuilder" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/CompositeBuilder/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/CompositeBuilder/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MTP" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MTP/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MTP/Src" -I../FileX/App -I../FileX/Target -I../Middlewares/ST/filex/common/inc -I../Middlewares/ST/filex/ports/generic/inc -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_DFU" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_DFU/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_DFU/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_AUDIO" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_AUDIO/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_AUDIO/Src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-USBD_MSC-2f-Src

clean-USBD_MSC-2f-Src:
	-$(RM) ./USBD_MSC/Src/usbd_msc.cyclo ./USBD_MSC/Src/usbd_msc.d ./USBD_MSC/Src/usbd_msc.o ./USBD_MSC/Src/usbd_msc.su ./USBD_MSC/Src/usbd_msc_bot.cyclo ./USBD_MSC/Src/usbd_msc_bot.d ./USBD_MSC/Src/usbd_msc_bot.o ./USBD_MSC/Src/usbd_msc_bot.su ./USBD_MSC/Src/usbd_msc_data.cyclo ./USBD_MSC/Src/usbd_msc_data.d ./USBD_MSC/Src/usbd_msc_data.o ./USBD_MSC/Src/usbd_msc_data.su ./USBD_MSC/Src/usbd_msc_scsi.cyclo ./USBD_MSC/Src/usbd_msc_scsi.d ./USBD_MSC/Src/usbd_msc_scsi.o ./USBD_MSC/Src/usbd_msc_scsi.su ./USBD_MSC/Src/usbd_msc_storage_template.cyclo ./USBD_MSC/Src/usbd_msc_storage_template.d ./USBD_MSC/Src/usbd_msc_storage_template.o ./USBD_MSC/Src/usbd_msc_storage_template.su

.PHONY: clean-USBD_MSC-2f-Src

