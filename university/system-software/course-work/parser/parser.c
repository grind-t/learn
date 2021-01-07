#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "parser.h"

statement *parse_statement(const char *s)
{
    size_t len = strlen(s);
    if (len > COMMENT_IDX)
        len = COMMENT_IDX;
    while (len > 0 && isspace(s[len - 1]))
        len--;
    if (len == 0)
        return NULL;
    char buff[len];
    memcpy(buff, s, len);
    buff[len] = '\0';
    statement *st = malloc(sizeof(statement));
    if (isspace(buff[0]))
    {
        st->label = NULL;
        st->mnemonic = strdup(strtok(buff, SPACE_DELIM));
    }
    else
    {
        st->label = strdup(strtok(buff, SPACE_DELIM));
        st->mnemonic = strtok(NULL, SPACE_DELIM);
        if (st->mnemonic)
            st->mnemonic = strdup(st->mnemonic);
    }
    st->operand = strtok(NULL, SPACE_DELIM);
    if (st->operand)
        st->operand = strdup(st->operand);
    return st;
}

void free_statement(statement *st)
{
    free(st->label);
    free(st->mnemonic);
    free(st->operand);
    free(st);
}