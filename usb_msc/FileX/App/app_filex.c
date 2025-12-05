/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    app_filex.c
  * @author  MCD Application Team
  * @brief   FileX applicative file
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "app_filex.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "fx_stm32_sram_driver.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
FX_MEDIA sram_disk;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/

/* USER CODE BEGIN PFP */

/* USER CODE END PFP */
/**
  * @brief  Application FileX Initialization.
  * @param  None
  * @retval int
  */
UINT MX_FileX_Init(void)
{
  UINT ret = FX_SUCCESS;
  /* USER CODE BEGIN MX_FileX_Init */

  /* USER CODE END MX_FileX_Init */

  /* Initialize FileX.  */
  fx_system_initialize();

  /* USER CODE BEGIN MX_FileX_Init 1*/
  fx_media_format(
         &sram_disk,
         fx_stm32_sram_driver,                /* Driver entry */
         (VOID*)FX_SRAM_DISK_BASE_ADDRESS,    /* Memory start */
         (VOID*)(FX_SRAM_DISK_BASE_ADDRESS + 4096), /* Sector buffer */
         4096,                                /* Sector buffer size */
         "SRAMDISK",                          /* Volume name */
         1,                                   /* Number of FATs */
         32,                                  /* Directory entries */
         0,                                   /* Hidden sectors */
         FX_SRAM_DISK_SIZE / 512,             /* Total sectors */
         512,                                 /* Bytes per sector */
         1, 8, 1);                            /* Sectors/cluster, heads, sectors/track */

     /* Open it */
     fx_media_open(&sram_disk, "SRAMDISK", fx_stm32_sram_driver,
                   (VOID*)FX_SRAM_DISK_BASE_ADDRESS,
                   (VOID*)(FX_SRAM_DISK_BASE_ADDRESS + 4096), 4096);

     /* Create heet.txt if missing */
     FX_FILE my_file;
     if (fx_file_create(&sram_disk, "heet.txt") == FX_SUCCESS)
     {
         fx_file_open(&sram_disk, &my_file, "heet.txt", FX_OPEN_FOR_WRITE);
         fx_file_write(&my_file, "hello from heet", 15);
         fx_file_close(&my_file);
     }

  /* USER CODE END MX_FileX_Init 1*/

  return ret;
}

/* USER CODE BEGIN 1 */

/* USER CODE END 1 */
