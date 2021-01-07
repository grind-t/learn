#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "parser.h"

void test_parse_statement()
{
    char *s = "";
    statement *st = parse_statement(s);
    assert(st == NULL);
    s = " ";
    st = parse_statement(s);
    assert(st == NULL);
    s = "label mnemonic operand";
    st = parse_statement(s);
    assert(strcmp(st->label, "label") == 0);
    assert(strcmp(st->mnemonic, "mnemonic") == 0);
    assert(strcmp(st->operand, "operand") == 0);
    free_statement(st);
    s = " mnemonic operand ";
    st = parse_statement(s);
    assert(st->label == NULL);
    assert(strcmp(st->mnemonic, "mnemonic") == 0);
    assert(strcmp(st->operand, "operand") == 0);
    free_statement(st);
}

int main()
{
    test_parse_statement();
    return EXIT_SUCCESS;
}