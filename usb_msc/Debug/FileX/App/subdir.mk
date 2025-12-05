################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FileX/App/app_filex.c 

OBJS += \
./FileX/App/app_filex.o 

C_DEPS += \
./FileX/App/app_filex.d 


# Each subdirectory must supply rules for building sources it contributes
FileX/App/%.o FileX/App/%.su FileX/App/%.cyclo: ../FileX/App/%.c FileX/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -DFX_INCLUDE_USER_DEFINE_FILE -c -I../Core/Inc -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/CompositeBuilder/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/Drivers/STM32H5xx_HAL_Driver/Src" -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/Drivers/STM32H5xx_HAL_Driver/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_HID/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_HID/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MSC/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/Core" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/Core/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/Core/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_HID" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/CompositeBuilder" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/CompositeBuilder/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD/CompositeBuilder/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MTP" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MTP/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_MTP/Src" -I../FileX/App -I../FileX/Target -I../Middlewares/ST/filex/common/inc -I../Middlewares/ST/filex/ports/generic/inc -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_DFU" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_DFU/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_DFU/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_AUDIO" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_AUDIO/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_AUDIO/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_CUSTOM_HID" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_CUSTOM_HID/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_CUSTOM_HID/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_PRINTER" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_PRINTER/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_PRINTER/Src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_CDC" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_CDC/Inc" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/usb_msc/USBD_CDC/Src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FileX-2f-App

clean-FileX-2f-App:
	-$(RM) ./FileX/App/app_filex.cyclo ./FileX/App/app_filex.d ./FileX/App/app_filex.o ./FileX/App/app_filex.su

.PHONY: clean-FileX-2f-App

