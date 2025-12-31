/*
 * webpage.c
 *
 *  Created on: Oct 24, 2025
 *      Author: aiXtrusion
 */


#include "lwip/apps/httpd.h"

const char index_html[] =
"HTTP/1.0 200 OK\r\n"
"Content-Type: text/html\r\n\r\n"
"<!DOCTYPE html><html><head><title>STM32 Temp</title>"
"<meta http-equiv=\"refresh\" content=\"1\">"
"</head><body>"
"<h2>STM32 Temperature Sensor</h2>"
"<p>Current Temperature: <!--#temp--></p>"
"</body></html>\r\n";


/* expose exact length (minus the '\0') */
const int index_html_len = sizeof(index_html) - 1;
