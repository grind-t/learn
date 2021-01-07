#ifndef PARSER_H
#define PARSER_H

#define COMMENT_IDX 40
#define SPACE_DELIM " \t\n\r\f\v"

typedef struct statement
{
    char *label;
    char *mnemonic;
    char *operand;
} statement;

statement *parse_statement(const char *s);

void free_statement(statement *st);

#endif