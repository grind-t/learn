#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <math.h>
#include "namtab.h"

#define A 0x9E3779B9 // Константа для хеширования Фибоначчи.
#define WORD_BYTES 4
#define WORD_BITS 32
#define ROTATE_BITS 1

typedef unsigned int uint;

uint hashkey(const char *s)
{
    assert(s);
    assert(*s);
    uint key = 0;
    uint word = 0;
    size_t length = strlen(s);
    size_t iterations = length / WORD_BYTES;
    size_t remainder = length % WORD_BYTES;
    for (size_t i = 0; i < iterations; i++)
    {
        // Циклический сдвиг.
        key = key >> ROTATE_BITS | key << WORD_BITS - ROTATE_BITS;
        memcpy(&word, s, WORD_BYTES);
        key += word;
        s += WORD_BYTES;
    }
    if (remainder != 0)
    {
        key = key >> ROTATE_BITS | key << WORD_BITS - ROTATE_BITS;
        word = 0;
        memcpy(&word, s, remainder);
        key += word;
    }
    return key;
}

// Хеширование методом умножения.
uint hashf(uint K, uint m)
{
    return (A * K) >> (WORD_BITS - m);
}

void namtab_init(names_table *namtab, size_t capacity)
{
    assert(namtab);
    namtab->capacity = capacity;
    namtab->arr = (names_table_item **)malloc(sizeof(names_table_item *) * namtab->capacity);
    for (size_t i = 0; i < namtab->capacity; i++)
        namtab->arr[i] = NULL;
}

void namtab_grow(names_table *namtab)
{
    assert(namtab);
    size_t new_capacity = 2 * namtab->capacity;
    names_table_item **new_arr = (names_table_item **)malloc(sizeof(names_table_item *) * namtab->capacity);
    if (!new_arr)
    {
        fputs("Not enough memory\n", stderr);
        exit(EXIT_FAILURE);
    }
    for (size_t i = 0; i < namtab->capacity; i++)
        new_arr[i] = namtab->arr[i];
    for (size_t i = namtab->capacity; i < new_capacity; i++)
        new_arr[i] = NULL;
    free(namtab->arr);
    namtab->arr = new_arr;
    namtab->capacity = new_capacity;
}

void namtab_insert(names_table *namtab, names_table_item *item, uint hash)
{
    assert(namtab);
    assert(item);
    for (size_t i = 0; i < namtab->capacity; i++)
    {
        size_t idx = (hash + i) % namtab->capacity;
        if (namtab->arr[idx] == NULL)
        {
            namtab->arr[idx] = item;
            return;
        }
    }
    namtab_grow(namtab);
    namtab_insert(namtab, item, hash);
}

void namtab_put(names_table *namtab, char *key, macro_definition *value)
{
    assert(namtab);
    if (key == NULL || *key == '\0')
        return;
    names_table_item *item = malloc(sizeof(names_table_item));
    item->key = key;
    item->value = value;
    uint hash = hashf(hashkey(key), log2(namtab->capacity));
    namtab_insert(namtab, item, hash);
}

macro_definition *namtab_get(names_table *namtab, char *key)
{
    assert(namtab);
    if (key == NULL || *key == '\0')
        return NULL;
    uint hash = hashf(hashkey(key), log2(namtab->capacity));
    for (uint i = 0; i < namtab->capacity; i++)
    {
        size_t idx = (hash + i) % namtab->capacity;
        if (namtab->arr[idx] == NULL)
            return NULL;
        else if (strcmp(namtab->arr[idx]->key, key) == 0)
            return namtab->arr[idx]->value;
    }
    return NULL;
}