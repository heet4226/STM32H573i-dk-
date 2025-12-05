/**
  ******************************************************************************
  * @file    usbd_printer_if_template.c
  * @author  MCD Application Team
  * @brief   Generic media access Layer.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "usbd_printer_if_template.h"
#include "main.h"
/** @addtogroup STM32_USB_DEVICE_LIBRARY
  * @{
  */
extern USBD_HandleTypeDef hUsbDeviceFS;

/** @defgroup USBD_PRNT
  * @brief usbd core module
  * @{
  */

/** @defgroup USBD_PRNT_Private_TypesDefinitions
  * @{
  */
/**
  * @}
  */


/** @defgroup USBD_PRNT_Private_Defines
  * @{
  */
/**
  * @}
  */


/** @defgroup USBD_PRNT_Private_Macros
  * @{
  */

/**
  * @}
  */


/** @defgroup USBD_PRNT_Private_FunctionPrototypes
  * @{
  */

static int8_t TEMPLATE_Init(void);
static int8_t TEMPLATE_DeInit(void);
static int8_t TEMPLATE_Control_req(uint8_t req, uint8_t *pbuf, uint16_t *length);
static int8_t TEMPLATE_Receive(uint8_t *pbuf, uint32_t *Len);

/*printer Private function prototypes*/
void TEMPLATE_PRNT_PageEndManager(uint8_t *Buf, uint32_t Len);

USBD_PRNT_ItfTypeDef USBD_PRNT_Template_fops =
{
  TEMPLATE_Init,
  TEMPLATE_DeInit,
  TEMPLATE_Control_req,
  TEMPLATE_Receive
};

static uint8_t PRNT_DEVICE_ID[] =
{
  0x00, 0x5E,
  'M', 'A', 'N', 'U', 'F', 'A', 'C', 'T', 'U', 'R', 'E', 'R', ':',
  'S', 'T', 'M', 'i', 'c', 'r', 'o', 'e', 'l', 'e', 'c', 't', 'r', 'o', 'n', 'i', 'c', 's', ';',
  'C', 'O', 'M', 'M', 'A', 'N', 'D', ' ', 'S', 'E', 'T', ':',
  'P', 'D', 'L', ',',  'P', 'C', 'P', ';',
  'M', 'O', 'D', 'E', 'L', ':',
  'U', 'S', 'B', 'P', 'r', 'i', 'n', 't', 'e', 'r', ';',
  'C', 'O', 'M', 'M', 'E', 'N', 'T', ':',
  'G', 'o', 'o', 'd', ' ', '!', ';',
  'A', 'C', 'T', 'I', 'V', 'E', ' ', 'C', 'O', 'M', 'M', 'A', 'N', 'D', ' ', 'S', 'E', 'T', ':',
  'P', 'C', 'P', ';'
};

/* Private functions ---------------------------------------------------------*/

/**
  * @brief  TEMPLATE_Init
  *         Initializes the PRNT media low layer
  * @param  None
  * @retval Result of the operation: USBD_OK if all operations are OK else USBD_FAIL
  */
static int8_t TEMPLATE_Init(void)
{
  /*
     Add your initialization code here
  */
  return (0);
}

/**
  * @brief  TEMPLATE_DeInit
  *         DeInitializes the PRNT media low layer
  * @param  None
  * @retval Result of the operation: USBD_OK if all operations are OK else USBD_FAIL
  */
static int8_t TEMPLATE_DeInit(void)
{
  /*
     Add your deinitialization code here
  */
  return (0);
}


/**
  * @brief  TEMPLATE_Receive
  *         Data received over USB OUT endpoint are sent over PRNT interface
  *         through this function.
  *
  *         @note
  *         This function will issue a NAK packet on any OUT packet received on
  *         USB endpoint until exiting this function. If you exit this function
  *         before transfer is complete on PRNT interface (ie. using DMA controller)
  *         it will result in receiving more data while previous ones are still
  *         not sent.
  *
  * @param  Buf: Buffer of data to be received
  * @param  Len: Number of data received (in bytes)
  * @retval Result of the operation: USBD_OK if all operations are OK else USBD_FAIL
  */
static int8_t TEMPLATE_Receive(uint8_t *Buf, uint32_t *Len)
{
  HAL_GPIO_TogglePin(GPIOI, GPIO_PIN_9); // indicate data received
  USBD_PRNT_ReceivePacket(&hUsbDeviceFS); // prepare for next packet
  return (0);
}



/**
  * @brief  TEMPLATE_Control_req
  *         Manage the  PRNT class requests
  * @param  req: Command code
  * @param  pbuf: Buffer containing command data (request parameters)
  * @param  length: Number of data to be sent (in bytes)
  * @retval Result of the operation: USBD_OK if all operations are OK else USBD_FAIL
  */
static int8_t TEMPLATE_Control_req(uint8_t req, uint8_t *pbuf, uint16_t *length)
{
	 switch (req)
	    {
	        case PRNT_GET_DEVICE_ID:
	        {
//	            static const uint8_t device_id[] =
//	                "MFG:STMicroelectronics;CMD:PDL;MDL:STM32Printer;CLS:PRINTER;";
	            uint16_t len = sizeof(PRNT_DEVICE_ID) - 1; // minus null terminator
	            pbuf[0] = (uint8_t)(len >> 8);
	            pbuf[1] = (uint8_t)(len & 0xFF);
	            memcpy(&pbuf[2], PRNT_DEVICE_ID, len);
	            *length = len + 2;
	            HAL_GPIO_TogglePin(GPIOI, GPIO_PIN_9);
	            break;
	        }

	        case PRNT_GET_PORT_STATUS:
	            pbuf[0] = PRNT_STATUS_SELECTED | PRNT_STATUS_NO_ERROR;
	            *length = 1;
	            break;

	        case PRNT_SOFT_RESET:
	            *length = 0;
	            break;

	        default:
	            *length = 0;
	            break;
	    }
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

