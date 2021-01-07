#ifndef UINT_H
#define UINT_H
#include <stdbool.h>

typedef unsigned int uint;

typedef struct OptionalUint
{
    bool null;
    uint value;
} OptionalUint;

#endif
