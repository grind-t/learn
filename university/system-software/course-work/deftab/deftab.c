#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "deftab.h"

void deftab_init(definitions_table *deftab, size_t capacity)
{
    assert(deftab);
    deftab->size = 0;
    deftab->capacity = capacity;
    deftab->arr = (char **)malloc(deftab->capacity * sizeof(char *));
    if (!deftab->arr)
    {
        fputs("Not enough memory\n", stderr);
        exit(EXIT_FAILURE);
    }
}

void deftab_grow(definitions_table *deftab)
{
    assert(deftab);
    size_t new_capacity = 2 * deftab->capacity;
    char **new_arr = (char **)malloc(sizeof(char *) * new_capacity);
    if (!new_arr)
    {
        fputs("Not enough memory\n", stderr);
        exit(EXIT_FAILURE);
    }
    for (size_t i = 0; i < deftab->size; i++)
        new_arr[i] = deftab->arr[i];
    free(deftab->arr);
    deftab->arr = new_arr;
    deftab->capacity = new_capacity;
}

void deftab_push(definitions_table *deftab, char *value)
{
    assert(deftab);
    if (deftab->size >= deftab->capacity)
        deftab_grow(deftab);
    deftab->arr[deftab->size++] = value;
}
