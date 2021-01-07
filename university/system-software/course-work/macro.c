#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include "parser.h"
#include "deftab.h"
#include "namtab.h"
#include "strutils.h"

#define BUFF_CAPACITY 256
#define MAX_PARAMS 8
#define MACRO_DIRECIVE "MACRO"
#define MEND_DIRECTIVE "MEND"
#define IDX_FMT "?%d"

definitions_table deftab;
names_table namtab;
FILE *in;
FILE *out;

void define(char *name, char *params);

size_t define_during_expanding(size_t start, char *name, char *params);

void expand(char *label, char *name, char *args, macro_definition *def);

int main(const int argc, const char *argv[])
{
    if (argc == 1)
    {
        fputs("missing input and output file names\n", stderr);
        return EXIT_FAILURE;
    }
    if (argc == 2)
    {
        fputs("missing output file name\n", stderr);
        return EXIT_FAILURE;
    }
    char buff[BUFF_CAPACITY];
    deftab_init(&deftab, BUFF_CAPACITY);
    namtab_init(&namtab, BUFF_CAPACITY);
    in = fopen(argv[1], "r");
    out = fopen(argv[2], "w");
    while (fgets(buff, BUFF_CAPACITY, in))
    {
        statement *st = parse_statement(buff);
        if (st == NULL)
            continue;
        macro_definition *def = namtab_get(&namtab, st->mnemonic);
        if (def != NULL)
            expand(st->label, st->mnemonic, st->operand, def);
        else if (st->mnemonic != NULL && strcmp(st->mnemonic, MACRO_DIRECIVE) == 0)
            define(st->label, st->operand);
        else
            fputs(buff, out);
        free_statement(st);
    }
    fclose(in);
    fclose(out);
    return EXIT_SUCCESS;
}

void define(char *name, char *params)
{
    if (name == NULL || name[0] == '\0')
    {
        fputs("missing macro name\n", stderr);
        exit(EXIT_FAILURE);
    }
    else if (namtab_get(&namtab, name) != NULL)
    {
        fputs("macro name duplicate\n", stderr);
        exit(EXIT_FAILURE);
    }
    char *paramtab[MAX_PARAMS];
    int paramtab_size = 0;
    for (char *t = strtok(params, ","); t && paramtab_size < MAX_PARAMS; t = strtok(NULL, ","))
        paramtab[paramtab_size++] = t;
    int level = 1;
    macro_definition *macrodef = malloc(sizeof(macro_definition));
    macrodef->start = deftab.size;
    char buff[BUFF_CAPACITY];
    while (fgets(buff, BUFF_CAPACITY, in))
    {
        buff[COMMENT_IDX] = '\0';
        strrtrim(buff);
        if (buff[0] == '\0')
            continue;
        char *mnemonic = buff;
        mnemonic += strcspn(mnemonic, SPACE_DELIM);
        mnemonic += strspn(mnemonic, SPACE_DELIM);
        if (strncmp(mnemonic, MACRO_DIRECIVE, strlen(MACRO_DIRECIVE)) == 0)
            level++;
        else if (strncmp(mnemonic, MEND_DIRECTIVE, strlen(MEND_DIRECTIVE)) == 0)
        {
            level--;
            if (level <= 0)
                break;
        }
        for (int i = 0; i < paramtab_size; i++)
        {
            char idx[snprintf(NULL, 0, IDX_FMT, i) + 1];
            sprintf(idx, IDX_FMT, i);
            strreplace(buff, COMMENT_IDX + 1, paramtab[i], idx);
        }
        deftab_push(&deftab, strdup(buff));
    }
    macrodef->end = deftab.size;
    if (macrodef->start == macrodef->end)
        free(macrodef);
    else
        namtab_put(&namtab, strdup(name), macrodef);
}

size_t define_during_expanding(size_t start, char *name, char *params)
{
    if (name == NULL || name[0] == '\0')
    {
        fprintf(stderr, "missing macro name");
        exit(EXIT_FAILURE);
    }
    else if (namtab_get(&namtab, name) != NULL)
    {
        fprintf(stderr, "macro name duplicate");
        exit(EXIT_FAILURE);
    }
    char *paramtab[MAX_PARAMS];
    int paramtab_size = 0;
    for (char *t = strtok(params, ","); t && paramtab_size < MAX_PARAMS; t = strtok(NULL, ","))
        paramtab[paramtab_size++] = t;
    int level = 1;
    macro_definition *macrodef = malloc(sizeof(macro_definition));
    macrodef->start = deftab.size;
    char buff[COMMENT_IDX + 1];
    size_t end = start;
    while (end < deftab.size)
    {
        strcpy(buff, deftab.arr[end]);
        char *mnemonic = buff;
        mnemonic += strcspn(mnemonic, SPACE_DELIM);
        mnemonic += strspn(mnemonic, SPACE_DELIM);
        if (strncmp(mnemonic, MACRO_DIRECIVE, strlen(MACRO_DIRECIVE)) == 0)
            level++;
        else if (strncmp(mnemonic, MEND_DIRECTIVE, strlen(MEND_DIRECTIVE)) == 0)
        {
            level--;
            if (level <= 0)
                break;
        }
        for (int i = 0; i < paramtab_size; i++)
        {
            char idx[snprintf(NULL, 0, IDX_FMT, i) + 1];
            sprintf(idx, IDX_FMT, i);
            strreplace(buff, COMMENT_IDX + 1, paramtab[i], idx);
        }
        deftab_push(&deftab, strdup(buff));
        end++;
    }
    macrodef->end = deftab.size;
    if (macrodef->start == macrodef->end)
        free(macrodef);
    else
        namtab_put(&namtab, strdup(name), macrodef);
    return end;
}

void expand(char *label, char *name, char *args, macro_definition *def)
{
    fprintf(out, "%-*s(MACRO) %s %s\n", COMMENT_IDX, label ? label : "", name, args ? args : "");
    char *argtab[MAX_PARAMS];
    int argtab_size = 0;
    for (char *t = strtok(args, ","); t && argtab_size < MAX_PARAMS; t = strtok(NULL, ","))
        argtab[argtab_size++] = t;
    char buff[COMMENT_IDX + 1];
    for (size_t i = def->start; i < def->end; i++)
    {
        strcpy(buff, deftab.arr[i]);
        for (int j = 0; j < argtab_size; j++)
        {
            char idx[snprintf(NULL, 0, IDX_FMT, j) + 1];
            sprintf(idx, IDX_FMT, j);
            strreplace(buff, COMMENT_IDX + 1, idx, argtab[j]);
        }
        statement *st = parse_statement(buff);
        macro_definition *innerdef = namtab_get(&namtab, st->mnemonic);
        if (innerdef)
            expand(st->label, st->mnemonic, st->operand, innerdef);
        else if (st->mnemonic != NULL && strcmp(st->mnemonic, MACRO_DIRECIVE) == 0)
            i = define_during_expanding(i + 1, st->label, st->operand);
        else
            fprintf(out, "%s\n", buff);
        free_statement(st);
    }
}
