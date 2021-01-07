#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include "namtab.h"

void test_namtab()
{
    names_table namtab;
    macro_definition macrodef1;
    macro_definition macrodef2;
    namtab_init(&namtab, 1);
    assert(namtab.capacity = 1);
    namtab_put(&namtab, "hello", &macrodef1);
    namtab_put(&namtab, "world", &macrodef2);
    assert(namtab.capacity = 2);
    assert(namtab_get(&namtab, "hello") == &macrodef1);
    assert(namtab_get(&namtab, "world") == &macrodef2);
    for (size_t i = 0; i < namtab.capacity; i++)
        free(namtab.arr[i]);
    free(namtab.arr);
}

int main()
{
    test_namtab();
    return EXIT_SUCCESS;
}