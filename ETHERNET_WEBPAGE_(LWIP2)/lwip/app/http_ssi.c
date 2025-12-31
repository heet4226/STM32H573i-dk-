/*
 * http_ssi.c
 *
 *  Created on: Oct 24, 2025
 *      Author: aiXtrusion
 */


#include "lwip/apps/httpd.h"
#include <stdio.h>
#include <string.h>
#include "main.h"


extern ADC_HandleTypeDef hadc1;


float Read_Temperature(void)
{
    HAL_ADC_Start(&hadc1);
    HAL_ADC_PollForConversion(&hadc1, HAL_MAX_DELAY);
    uint32_t raw = HAL_ADC_GetValue(&hadc1);

    float vref = 3.3f;
    float voltage = (raw * vref) / 4095.0f;
    float temp = (voltage - 0.76f) / 0.0025f + 25.0f;  // typical STM32 formula
    return temp;
}


/* Tag list: must match <!--#temp--> in HTML */
static const char *ssi_tags[] = {"temp"};

/* Replace tag with current temperature string */
u16_t ssi_handler(int iIndex, char *pcInsert, int iInsertLen)
{
    if (iIndex == 0)
    {
        float temp = Read_Temperature();   // your ADC read function
//        snprintf(pcInsert, iInsertLen, "TEMP %.0f", HAL_GetTick() / 1000.0f);

        snprintf(pcInsert, iInsertLen, "%.2f &deg;C", temp);
        printf("SSI called, temp = %.2f\r\n", temp);

    }
    return strlen(pcInsert);
}

/* Register SSI handler */
void httpd_ssi_init_custom(void)
{

    http_set_ssi_handler(ssi_handler, ssi_tags, 1);
}
