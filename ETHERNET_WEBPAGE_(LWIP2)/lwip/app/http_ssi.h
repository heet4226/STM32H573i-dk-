/*
 * webpage.h
 *
 *  Created on: Oct 24, 2025
 *      Author: aiXtrusion
 */

#ifndef APP_HTTP_SSI_H_
#define APP_HTTP_SSI_H_

u16_t ssi_handler(int iIndex, char *pcInsert, int iInsertLen);
void httpd_ssi_init_custom(void);
float Read_Temperature(void);

#endif /* APP_HTTP_SSI_H_ */
