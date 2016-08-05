################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/Components/ft6x06/ft6x06.c 

OBJS += \
./Utilities/Components/ft6x06/ft6x06.o 

C_DEPS += \
./Utilities/Components/ft6x06/ft6x06.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/Components/ft6x06/%.o: ../Utilities/Components/ft6x06/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F407VGTx -DSTM32F4 -DSTM32F4DISCOVERY -DSTM32 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/inc" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/CMSIS/core" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/CMSIS/device" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/HAL_Driver/Inc/Legacy" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/HAL_Driver/Inc" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/ampire480272" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/ampire640480" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/Common" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/cs43l22" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/exc7200" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/ft6x06" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/ili9325" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/ili9341" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/l3gd20" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/lis302dl" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/lis3dsh" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/ls016b8uy" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/lsm303dlhc" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/mfxstm32l152" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/n25q128a" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/n25q256a" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/n25q512a" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/otm8009a" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/ov2640" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/s25fl512s" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/s5k5cag" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/st7735" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/st7789h2" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/stmpe1600" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/stmpe811" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/ts3510" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/Components/wm8994" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities" -I"C:/Users/facun/OneDrive/Sistemas Embebidos/TPBlinky/Utilities/STM32F4-Discovery" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


