/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  ** This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * COPYRIGHT(c) 2018 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "adc.h"
#include "i2c.h"
#include "rtc.h"
#include "spi.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "string.h"
#include "stdio.h"
#include "stdlib.h"

#include "battery.h"
#include "water.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

#define TXBUFFERSIZE 128

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_NVIC_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* Buffer used for debug UART */
char tx_buffer[TXBUFFERSIZE];
uint32_t last_blink = 0;
/* tmp */
uint8_t msg_id = 0;
float water_temperature = 0;

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_ADC_Init();
  MX_I2C1_Init();
  MX_RTC_Init();
  MX_SPI2_Init();
  MX_USART2_UART_Init();

  /* Initialize interrupts */
  MX_NVIC_Init();
  /* USER CODE BEGIN 2 */

  HAL_GPIO_WritePin(GPIOB, SENSOR_PWR_Pin, GPIO_PIN_SET);

  HAL_GPIO_WritePin(GPIOA, LED_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(GPIOA, LED_Pin, DOOR_LED_Pin);
  HAL_GPIO_WritePin(GPIOB, LED_RED_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(GPIOB, LED_GREEN_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(GPIOB, LED_BLUE_Pin, GPIO_PIN_RESET);

  HAL_GPIO_WritePin(GPIOA, PUMP_Pin, GPIO_PIN_SET);


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */


	  uint32_t now = HAL_GetTick();
	  if (now - last_blink >= 1000) {
		  last_blink = now;

		  // Send data to debug UART.
		  water_temperature = WATER_Temperature();
		  char buf[100];
		  gcvt(water_temperature, 6, buf);
		  uint16_t batt = BATTERY_Mv();
			int tx_len = snprintf(
			  tx_buffer,
			  TXBUFFERSIZE,
			  "msg_id:%d, batt:%u, temp:%s\n",
			  msg_id++,
			  batt,
			  buf
			);
			// Blocking UART.
			HAL_UART_Transmit(&huart2, (uint8_t *)tx_buffer, tx_len, 500);


		  HAL_GPIO_TogglePin(GPIOA, LED_Pin);
	  }

	  if (HAL_GPIO_ReadPin(GPIOA, MOTION_Pin)) {
		  HAL_GPIO_WritePin(GPIOB, LED_RED_Pin, GPIO_PIN_SET);
	  } else {
		  HAL_GPIO_WritePin(GPIOB, LED_RED_Pin, GPIO_PIN_RESET);
	  }

	  if (HAL_GPIO_ReadPin(GPIOA, WATER_LEVEL_Pin)) {
		  HAL_GPIO_WritePin(GPIOB, LED_BLUE_Pin, GPIO_PIN_SET);
	  } else {
		  HAL_GPIO_WritePin(GPIOB, LED_BLUE_Pin, GPIO_PIN_RESET);
	  }

	  if (water_temperature > 1600) {
		  HAL_GPIO_WritePin(GPIOB, LED_GREEN_Pin, GPIO_PIN_SET);
	  } else {
		  HAL_GPIO_WritePin(GPIOB, LED_GREEN_Pin, GPIO_PIN_RESET);
	  }

	  if (HAL_GPIO_ReadPin(DOOR_GPIO_Port, DOOR_Pin)) {
		  HAL_GPIO_WritePin(GPIOA, DOOR_LED_Pin, GPIO_PIN_SET);
	  } else {
		  HAL_GPIO_WritePin(GPIOA, DOOR_LED_Pin, GPIO_PIN_RESET);
	  }

//	  HAL_GPIO_WritePin(GPIOB, LED_RED_Pin, GPIO_PIN_SET);
//	  HAL_GPIO_WritePin(GPIOB, LED_GREEN_Pin, GPIO_PIN_RESET);
//	  HAL_GPIO_WritePin(GPIOB, LED_BLUE_Pin, GPIO_PIN_RESET);
//
//	  HAL_Delay(500);
//	  HAL_GPIO_TogglePin(GPIOA, LED_Pin);
//	  HAL_GPIO_TogglePin(GPIOA, DOOR_LED_Pin);
//
//	  HAL_GPIO_WritePin(GPIOB, LED_RED_Pin, GPIO_PIN_RESET);
//	  HAL_GPIO_WritePin(GPIOB, LED_GREEN_Pin, GPIO_PIN_SET);
//	  HAL_GPIO_WritePin(GPIOB, LED_BLUE_Pin, GPIO_PIN_RESET);
//
//	  HAL_Delay(500);
//	  HAL_GPIO_TogglePin(GPIOA, LED_Pin);
//	  HAL_GPIO_TogglePin(GPIOA, DOOR_LED_Pin);
//
//	  HAL_GPIO_WritePin(GPIOB, LED_RED_Pin, GPIO_PIN_RESET);
//	  HAL_GPIO_WritePin(GPIOB, LED_GREEN_Pin, GPIO_PIN_RESET);
//	  HAL_GPIO_WritePin(GPIOB, LED_BLUE_Pin, GPIO_PIN_SET);

  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /**Configure the main internal regulator output voltage 
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /**Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_LSI|RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.LSIState = RCC_LSI_ON;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_5;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /**Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART2|RCC_PERIPHCLK_I2C1
                              |RCC_PERIPHCLK_RTC;
  PeriphClkInit.Usart2ClockSelection = RCC_USART2CLKSOURCE_PCLK1;
  PeriphClkInit.I2c1ClockSelection = RCC_I2C1CLKSOURCE_PCLK1;
  PeriphClkInit.RTCClockSelection = RCC_RTCCLKSOURCE_LSI;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief NVIC Configuration.
  * @retval None
  */
static void MX_NVIC_Init(void)
{
  /* RTC_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(RTC_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(RTC_IRQn);
  /* EXTI4_15_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(EXTI4_15_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI4_15_IRQn);
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
