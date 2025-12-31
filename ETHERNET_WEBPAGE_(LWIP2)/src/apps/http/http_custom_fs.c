/*
 * http_custom_fs.c
 *
 *  Created on: Oct 24, 2025
 *      Author: aiXtrusion
 */


#include "lwip/apps/fs.h"
#include <string.h>
#include <stdio.h>
#include "lwipopts.h"

extern const char *index_html;

/* Called when httpd wants to open a file */
int fs_open_custom(struct fs_file *file, const char *name)
{
    if (strcmp(name, "/") == 0 || strcmp(name, "/index.html") == 0)
    {
        file->data = index_html;
        file->len = strlen(index_html);
        file->index = file->len;
        file->flags = FS_FILE_FLAGS_HEADER_PERSISTENT;
        return ERR_OK;
    }
    return ERR_VAL; /* File not found */
}

/* Required but unused in our simple setup */
void fs_close_custom(struct fs_file *file) { }
int fs_bytes_left_custom(struct fs_file *file) { return 0; }
