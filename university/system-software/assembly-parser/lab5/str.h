#ifndef STR_H
#define STR_H
#include "uint.h"

#define MAX_STR_SIZE 255

typedef struct str
{
    char chars[MAX_STR_SIZE];
} str;

typedef struct StrArr
{
    uint size;
    str* values;
} StrArr;

#endif
