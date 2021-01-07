#ifndef DEFTAB_H
#define DEFTAB_H
#include <stdlib.h>

typedef struct definitions_table
{
    char **arr;
    size_t size;
    size_t capacity;
} definitions_table;

void deftab_init(definitions_table *deftab, size_t capacity);

void deftab_push(definitions_table *deftab, char *value);

#endif