################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/stm32f4xx_it.c \
../src/syscalls.c \
../src/system_stm32f4xx.c 

OBJS += \
./src/main.o \
./src/stm32f4xx_it.o \
./src/syscalls.o \
./src/system_stm32f4xx.o 

C_DEPS += \
./src/main.d \
./src/stm32f4xx_it.d \
./src/syscalls.d \
./src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F407VGTx -DSTM32F4 -DSTM32F4DISCOVERY -DSTM32 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -I"C:/Users/Alumno/TPBlinky/inc" -I"C:/Users/Alumno/TPBlinky/CMSIS/core" -I"C:/Users/Alumno/TPBlinky/CMSIS/device" -I"C:/Users/Alumno/TPBlinky/HAL_Driver/Inc/Legacy" -I"C:/Users/Alumno/TPBlinky/HAL_Driver/Inc" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/ampire480272" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/ampire640480" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/Common" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/cs43l22" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/exc7200" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/ft6x06" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/ili9325" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/ili9341" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/l3gd20" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/lis302dl" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/lis3dsh" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/ls016b8uy" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/lsm303dlhc" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/mfxstm32l152" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/n25q128a" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/n25q256a" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/n25q512a" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/otm8009a" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/ov2640" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/s25fl512s" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/s5k5cag" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/st7735" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/st7789h2" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/stmpe1600" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/stmpe811" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/ts3510" -I"C:/Users/Alumno/TPBlinky/Utilities/Components/wm8994" -I"C:/Users/Alumno/TPBlinky/Utilities" -I"C:/Users/Alumno/TPBlinky/Utilities/STM32F4-Discovery" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


