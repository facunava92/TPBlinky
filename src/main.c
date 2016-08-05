/**
 ******************************************************************************
 * @file    main.c
 * @author  Ac6
 * @version V1.0
 * @date    01-December-2013
 * @brief   Default main function.
 ******************************************************************************
 */

#include "stm32f4xx.h"
#include "stm32f4_discovery.h"

void delay(uint16_t delay);

#define LED_NARANJA GPIO_PIN_13
#define LED_VERDE GPIO_PIN_12
#define LED_ROJO GPIO_PIN_14
#define LED_AZUL GPIO_PIN_15
#define PUSH_BUTTON GPIO_PIN_0

#define LEDS_PORT GPIOD
#define PUSH_PORT GPIOA

int main(void) {

	__GPIOA_CLK_ENABLE();
	__GPIOD_CLK_ENABLE();


	GPIO_InitTypeDef GPIOA_Init,GPIOD_Init;

	GPIOD_Init.Mode = GPIO_MODE_OUTPUT_PP;
	GPIOD_Init.Pull = GPIO_NOPULL;
	GPIOD_Init.Speed = GPIO_SPEED_FAST;

	GPIOD_Init.Pin = LED_AZUL | LED_ROJO | LED_NARANJA | LED_VERDE;
	HAL_GPIO_Init(LEDS_PORT, &GPIOD_Init);

	GPIOA_Init.Mode = GPIO_MODE_INPUT;
	GPIOA_Init.Pull = GPIO_PULLDOWN;
	GPIOA_Init.Speed = GPIO_SPEED_FAST;

	GPIOA_Init.Pin = PUSH_BUTTON;
	HAL_GPIO_Init(PUSH_PORT, &GPIOA_Init);


	while (1) {

		int flag=0;
		while (1)
		{

		if (HAL_GPIO_ReadPin(PUSH_PORT,PUSH_BUTTON ))
		{
			flag ++;

			if (flag > 0)
				if (flag % 2 == 0)
					flag = 0;
		}



		if (flag == 0)
		{
			HAL_GPIO_WritePin(LEDS_PORT, LED_AZUL | LED_ROJO | LED_NARANJA, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(LEDS_PORT, LED_VERDE, GPIO_PIN_SET);
			delay(0xFFFF);
			HAL_GPIO_WritePin(LEDS_PORT, LED_ROJO | LED_NARANJA | LED_VERDE, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(LEDS_PORT, LED_AZUL, GPIO_PIN_SET);
			delay(0xFFFF);
			HAL_GPIO_WritePin(LEDS_PORT, LED_AZUL | LED_NARANJA | LED_VERDE, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(LEDS_PORT, LED_ROJO, GPIO_PIN_SET);
			delay(0xFFFF);
			HAL_GPIO_WritePin(LEDS_PORT, LED_AZUL | LED_ROJO | LED_VERDE, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(LEDS_PORT, LED_NARANJA, GPIO_PIN_SET);
			delay(0xFFFF);

		}

		else
		{
			HAL_GPIO_WritePin(LEDS_PORT, LED_AZUL | LED_ROJO | LED_VERDE, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(LEDS_PORT, LED_NARANJA, GPIO_PIN_SET);
			delay(0xFFFF);
			HAL_GPIO_WritePin(LEDS_PORT, LED_AZUL | LED_NARANJA | LED_VERDE, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(LEDS_PORT, LED_ROJO, GPIO_PIN_SET);
			delay(0xFFFF);
			HAL_GPIO_WritePin(LEDS_PORT, LED_ROJO | LED_NARANJA | LED_VERDE, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(LEDS_PORT, LED_AZUL, GPIO_PIN_SET);
			delay(0xFFFF);
			HAL_GPIO_WritePin(LEDS_PORT, LED_AZUL | LED_ROJO | LED_NARANJA, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(LEDS_PORT, LED_VERDE, GPIO_PIN_SET);
			delay(0xFFFF);
		}
		}
	}
}

void delay(uint16_t delay) {
	uint16_t i = 0xFFFF;
	while (i) {
		while (delay)
			delay--;
		i--;
	}
}
