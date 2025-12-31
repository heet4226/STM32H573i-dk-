################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/apps/snmp/snmp_asn1.c \
../src/apps/snmp/snmp_core.c \
../src/apps/snmp/snmp_mib2.c \
../src/apps/snmp/snmp_mib2_icmp.c \
../src/apps/snmp/snmp_mib2_interfaces.c \
../src/apps/snmp/snmp_mib2_ip.c \
../src/apps/snmp/snmp_mib2_snmp.c \
../src/apps/snmp/snmp_mib2_system.c \
../src/apps/snmp/snmp_mib2_tcp.c \
../src/apps/snmp/snmp_mib2_udp.c \
../src/apps/snmp/snmp_msg.c \
../src/apps/snmp/snmp_netconn.c \
../src/apps/snmp/snmp_pbuf_stream.c \
../src/apps/snmp/snmp_raw.c \
../src/apps/snmp/snmp_scalar.c \
../src/apps/snmp/snmp_snmpv2_framework.c \
../src/apps/snmp/snmp_snmpv2_usm.c \
../src/apps/snmp/snmp_table.c \
../src/apps/snmp/snmp_threadsync.c \
../src/apps/snmp/snmp_traps.c \
../src/apps/snmp/snmpv3.c \
../src/apps/snmp/snmpv3_mbedtls.c 

OBJS += \
./src/apps/snmp/snmp_asn1.o \
./src/apps/snmp/snmp_core.o \
./src/apps/snmp/snmp_mib2.o \
./src/apps/snmp/snmp_mib2_icmp.o \
./src/apps/snmp/snmp_mib2_interfaces.o \
./src/apps/snmp/snmp_mib2_ip.o \
./src/apps/snmp/snmp_mib2_snmp.o \
./src/apps/snmp/snmp_mib2_system.o \
./src/apps/snmp/snmp_mib2_tcp.o \
./src/apps/snmp/snmp_mib2_udp.o \
./src/apps/snmp/snmp_msg.o \
./src/apps/snmp/snmp_netconn.o \
./src/apps/snmp/snmp_pbuf_stream.o \
./src/apps/snmp/snmp_raw.o \
./src/apps/snmp/snmp_scalar.o \
./src/apps/snmp/snmp_snmpv2_framework.o \
./src/apps/snmp/snmp_snmpv2_usm.o \
./src/apps/snmp/snmp_table.o \
./src/apps/snmp/snmp_threadsync.o \
./src/apps/snmp/snmp_traps.o \
./src/apps/snmp/snmpv3.o \
./src/apps/snmp/snmpv3_mbedtls.o 

C_DEPS += \
./src/apps/snmp/snmp_asn1.d \
./src/apps/snmp/snmp_core.d \
./src/apps/snmp/snmp_mib2.d \
./src/apps/snmp/snmp_mib2_icmp.d \
./src/apps/snmp/snmp_mib2_interfaces.d \
./src/apps/snmp/snmp_mib2_ip.d \
./src/apps/snmp/snmp_mib2_snmp.d \
./src/apps/snmp/snmp_mib2_system.d \
./src/apps/snmp/snmp_mib2_tcp.d \
./src/apps/snmp/snmp_mib2_udp.d \
./src/apps/snmp/snmp_msg.d \
./src/apps/snmp/snmp_netconn.d \
./src/apps/snmp/snmp_pbuf_stream.d \
./src/apps/snmp/snmp_raw.d \
./src/apps/snmp/snmp_scalar.d \
./src/apps/snmp/snmp_snmpv2_framework.d \
./src/apps/snmp/snmp_snmpv2_usm.d \
./src/apps/snmp/snmp_table.d \
./src/apps/snmp/snmp_threadsync.d \
./src/apps/snmp/snmp_traps.d \
./src/apps/snmp/snmpv3.d \
./src/apps/snmp/snmpv3_mbedtls.d 


# Each subdirectory must supply rules for building sources it contributes
src/apps/snmp/%.o src/apps/snmp/%.su src/apps/snmp/%.cyclo: ../src/apps/snmp/%.c src/apps/snmp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H573xx -c -I../Core/Inc -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/Drivers/BSP" -I../Drivers/STM32H5xx_HAL_Driver/Inc -I../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H573I-DK -I../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/lwip" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/lwip/app" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/lwip/target" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/src" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/src/include" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/system" -I"C:/Users/aiXtrusion/STM32CubeIDE/workspace_1.19.0/new_workspace/lwip/system/arch" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-src-2f-apps-2f-snmp

clean-src-2f-apps-2f-snmp:
	-$(RM) ./src/apps/snmp/snmp_asn1.cyclo ./src/apps/snmp/snmp_asn1.d ./src/apps/snmp/snmp_asn1.o ./src/apps/snmp/snmp_asn1.su ./src/apps/snmp/snmp_core.cyclo ./src/apps/snmp/snmp_core.d ./src/apps/snmp/snmp_core.o ./src/apps/snmp/snmp_core.su ./src/apps/snmp/snmp_mib2.cyclo ./src/apps/snmp/snmp_mib2.d ./src/apps/snmp/snmp_mib2.o ./src/apps/snmp/snmp_mib2.su ./src/apps/snmp/snmp_mib2_icmp.cyclo ./src/apps/snmp/snmp_mib2_icmp.d ./src/apps/snmp/snmp_mib2_icmp.o ./src/apps/snmp/snmp_mib2_icmp.su ./src/apps/snmp/snmp_mib2_interfaces.cyclo ./src/apps/snmp/snmp_mib2_interfaces.d ./src/apps/snmp/snmp_mib2_interfaces.o ./src/apps/snmp/snmp_mib2_interfaces.su ./src/apps/snmp/snmp_mib2_ip.cyclo ./src/apps/snmp/snmp_mib2_ip.d ./src/apps/snmp/snmp_mib2_ip.o ./src/apps/snmp/snmp_mib2_ip.su ./src/apps/snmp/snmp_mib2_snmp.cyclo ./src/apps/snmp/snmp_mib2_snmp.d ./src/apps/snmp/snmp_mib2_snmp.o ./src/apps/snmp/snmp_mib2_snmp.su ./src/apps/snmp/snmp_mib2_system.cyclo ./src/apps/snmp/snmp_mib2_system.d ./src/apps/snmp/snmp_mib2_system.o ./src/apps/snmp/snmp_mib2_system.su ./src/apps/snmp/snmp_mib2_tcp.cyclo ./src/apps/snmp/snmp_mib2_tcp.d ./src/apps/snmp/snmp_mib2_tcp.o ./src/apps/snmp/snmp_mib2_tcp.su ./src/apps/snmp/snmp_mib2_udp.cyclo ./src/apps/snmp/snmp_mib2_udp.d ./src/apps/snmp/snmp_mib2_udp.o ./src/apps/snmp/snmp_mib2_udp.su ./src/apps/snmp/snmp_msg.cyclo ./src/apps/snmp/snmp_msg.d ./src/apps/snmp/snmp_msg.o ./src/apps/snmp/snmp_msg.su ./src/apps/snmp/snmp_netconn.cyclo ./src/apps/snmp/snmp_netconn.d ./src/apps/snmp/snmp_netconn.o ./src/apps/snmp/snmp_netconn.su ./src/apps/snmp/snmp_pbuf_stream.cyclo ./src/apps/snmp/snmp_pbuf_stream.d ./src/apps/snmp/snmp_pbuf_stream.o ./src/apps/snmp/snmp_pbuf_stream.su ./src/apps/snmp/snmp_raw.cyclo ./src/apps/snmp/snmp_raw.d ./src/apps/snmp/snmp_raw.o ./src/apps/snmp/snmp_raw.su ./src/apps/snmp/snmp_scalar.cyclo ./src/apps/snmp/snmp_scalar.d ./src/apps/snmp/snmp_scalar.o ./src/apps/snmp/snmp_scalar.su ./src/apps/snmp/snmp_snmpv2_framework.cyclo ./src/apps/snmp/snmp_snmpv2_framework.d ./src/apps/snmp/snmp_snmpv2_framework.o ./src/apps/snmp/snmp_snmpv2_framework.su ./src/apps/snmp/snmp_snmpv2_usm.cyclo ./src/apps/snmp/snmp_snmpv2_usm.d ./src/apps/snmp/snmp_snmpv2_usm.o ./src/apps/snmp/snmp_snmpv2_usm.su ./src/apps/snmp/snmp_table.cyclo ./src/apps/snmp/snmp_table.d ./src/apps/snmp/snmp_table.o ./src/apps/snmp/snmp_table.su ./src/apps/snmp/snmp_threadsync.cyclo ./src/apps/snmp/snmp_threadsync.d ./src/apps/snmp/snmp_threadsync.o ./src/apps/snmp/snmp_threadsync.su ./src/apps/snmp/snmp_traps.cyclo ./src/apps/snmp/snmp_traps.d ./src/apps/snmp/snmp_traps.o ./src/apps/snmp/snmp_traps.su ./src/apps/snmp/snmpv3.cyclo ./src/apps/snmp/snmpv3.d ./src/apps/snmp/snmpv3.o ./src/apps/snmp/snmpv3.su ./src/apps/snmp/snmpv3_mbedtls.cyclo ./src/apps/snmp/snmpv3_mbedtls.d ./src/apps/snmp/snmpv3_mbedtls.o ./src/apps/snmp/snmpv3_mbedtls.su

.PHONY: clean-src-2f-apps-2f-snmp

