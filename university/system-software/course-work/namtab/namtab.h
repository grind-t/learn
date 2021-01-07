#ifndef NAMTAB_H
#define NAMTAB_H
#include <stdlib.h>

typedef struct macro_definition
{
    size_t start;
    size_t end;
} macro_definition;

typedef struct names_table_item
{
    char *key;
    macro_definition *value;
} names_table_item;

typedef struct names_table
{
    names_table_item **arr;
    size_t capacity;
} names_table;

void namtab_init(names_table *namtab, size_t capacity);

void namtab_put(names_table *namtab, char *key, macro_definition *value);

macro_definition *namtab_get(names_table *namtab, char *key);

#endif