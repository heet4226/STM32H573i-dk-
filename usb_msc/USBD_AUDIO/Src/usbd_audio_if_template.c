/**
  ******************************************************************************
  * @file    usbd_cdc_if_template.c
  * @author  MCD Application Team
  * @brief   Generic media access Layer.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2015 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

/* BSPDependencies
- "stm32xxxxx_{eval}{discovery}.c"
- "stm32xxxxx_{eval}{discovery}_io.c"
- "stm32xxxxx_{eval}{discovery}_audio.c"
EndBSPDependencies */

/* Includes ------------------------------------------------------------------*/
#include "usbd_audio_if_template.h"

/** @addtogroup STM32_USB_DEVICE_LIBRARY
  * @{
  */
#include "usbd_audio_if_template.h"
#include "main.h"
#include "stm32h5xx_hal.h"

/** @defgroup USBD_AUDIO
  * @brief usbd core module
  * @{
  */

/** @defgroup USBD_AUDIO_Private_TypesDefinitions
  * @{
  */
extern SAI_HandleTypeDef hsai_BlockA2;   // from MX_SAI2_Init()
extern I2C_HandleTypeDef hi2c4;

#define CS42L51_ADDR   (0x94)
// if CS42L51 uses I2C1 control
/**
  * @}
  */


/** @defgroup USBD_AUDIO_Private_Defines
  * @{
  */
/**
  * @}
  */


/** @defgroup USBD_AUDIO_Private_Macros
  * @{
  */

/**
  * @}
  */


/** @defgroup USBD_AUDIO_Private_FunctionPrototypes
  * @{
  */

static int8_t  TEMPLATE_Init(uint32_t  AudioFreq, uint32_t Volume, uint32_t options);
static int8_t  TEMPLATE_DeInit(uint32_t options);
static int8_t  TEMPLATE_AudioCmd(uint8_t *pbuf, uint32_t size, uint8_t cmd);
static int8_t  TEMPLATE_VolumeCtl(uint8_t vol);
static int8_t  TEMPLATE_MuteCtl(uint8_t cmd);
static int8_t  TEMPLATE_PeriodicTC(uint8_t *pbuf, uint32_t size, uint8_t cmd);
static int8_t  TEMPLATE_GetState(void);

USBD_AUDIO_ItfTypeDef USBD_AUDIO_Template_fops =
{
  TEMPLATE_Init,
  TEMPLATE_DeInit,
  TEMPLATE_AudioCmd,
  TEMPLATE_VolumeCtl,
  TEMPLATE_MuteCtl,
  TEMPLATE_PeriodicTC,
  TEMPLATE_GetState,
};

/* Private functions ---------------------------------------------------------*/

/**
  * @brief  TEMPLATE_Init
  *         Initializes the AUDIO media low layer
  * @param  None
  * @retval Result of the operation: USBD_OK if all operations are OK else USBD_FAIL
  */
static int8_t TEMPLATE_Init(uint32_t  AudioFreq, uint32_t Volume, uint32_t options)
{
	  /* Configure your codec here using HAL_I2C */
	  // Example: reset + power up sequence for CS42L51
	  uint8_t reg[2];

	  reg[0] = 0x02; reg[1] = 0x9E;  // Power up, enable DACs, etc.
	  HAL_I2C_Master_Transmit(&hi2c4, CS42L51_ADDR, reg, 2, HAL_MAX_DELAY);

	  /* Configure SAI peripheral for given AudioFreq */
	  hsai_BlockA2.Init.AudioFrequency = AudioFreq;
	  if (HAL_SAI_Init(&hsai_BlockA2) != HAL_OK) return USBD_FAIL;

	  return USBD_OK;
}

/**
  * @brief  TEMPLATE_DeInit
  *         DeInitializes the AUDIO media low layer
  * @param  None
  * @retval Result of the operation: USBD_OK if all operations are OK else USBD_FAIL
  */
static int8_t TEMPLATE_DeInit(uint32_t options)
{
  UNUSED(options);

  HAL_SAI_DeInit(&hsai_BlockA2);
  return (0);
}


/**
  * @brief  TEMPLATE_AudioCmd
  *         AUDIO command handler
  * @param  Buf: Buffer of data to be sent
  * @param  size: Number of data to be sent (in bytes)
  * @param  cmd: command opcode
  * @retval Result of the operation: USBD_OK if all operations are OK else USBD_FAIL
  */
static int8_t TEMPLATE_AudioCmd(uint8_t *pbuf, uint32_t size, uint8_t cmd)
{
	 if (cmd == AUDIO_CMD_PLAY)
	  {
	    /* Send USB PCM data directly to codec via DMA */
	    HAL_SAI_Transmit_DMA(&hsai_BlockA2, (uint8_t*)pbuf, size / 2);
	  }
	  return USBD_OK;

  return (0);
}

/**
  * @brief  TEMPLATE_VolumeCtl
  * @param  vol: volume level (0..100)
  * @retval Result of the operation: USBD_OK if all operations are OK else USBD_FAIL
  */
static int8_t TEMPLATE_VolumeCtl(uint8_t vol)
{
  UNUSED(vol);

  return (0);
}

/**
  * @brief  TEMPLATE_MuteCtl
  * @param  cmd: vmute command
  * @retval Result of the operation: USBD_OK if all operations are OK else USBD_FAIL
  */
static int8_t TEMPLATE_MuteCtl(uint8_t cmd)
{
  UNUSED(cmd);

  return (0);
}

/**
  * @brief  TEMPLATE_PeriodicTC
  * @param  cmd
  * @retval Result of the operation: USBD_OK if all operations are OK else USBD_FAIL
  */
static int8_t TEMPLATE_PeriodicTC(uint8_t *pbuf, uint32_t size, uint8_t cmd)
{
  UNUSED(pbuf);
  UNUSED(size);
  UNUSED(cmd);

  return (0);
}

/**
  * @brief  TEMPLATE_GetState
  * @param
  * @retval Result of the operation: USBD_OK if all operations are OK else USBD_FAIL
  */
static int8_t TEMPLATE_GetState(void)
{
  return (0);
}
/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */

