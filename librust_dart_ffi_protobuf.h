#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct
{
    int64_t len;
    uint8_t *data;
} ByteBuffer;

ByteBuffer get_address_book(void);

void mylib_destroy_bytebuffer(ByteBuffer v);