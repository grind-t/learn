#include <assert.h>
#include <string.h>
#include "deftab.h"

void test_deftab()
{
    definitions_table deftab;
    deftab_init(&deftab, 1);
    assert(deftab.size == 0);
    assert(deftab.capacity = 1);
    deftab_push(&deftab, "hello");
    deftab_push(&deftab, "world");
    assert(deftab.size = 2);
    assert(deftab.capacity = 2);
    assert(strcmp(deftab.arr[0], "hello") == 0);
    assert(strcmp(deftab.arr[1], "world") == 0);
    free(deftab.arr);
}

int main()
{
    test_deftab();
    return EXIT_SUCCESS;
}