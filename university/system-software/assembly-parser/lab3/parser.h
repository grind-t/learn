#ifndef PARSER_H
#define PARSER_H
#include "../lab5/uint.h"
#include "../lab5/str.h"
#include <string.h>
#include <ctype.h>

// Позиция с которой должна начинаться метка.
#define LABEL_INDEX 0
// Позиция с которой должен начинаться комментарий (10 табуляций).
#define COMMENT_INDEX 40

// Разобранная строка ассемблера.
typedef struct Asm
{
    char label[COMMENT_INDEX];
    char operator[COMMENT_INDEX];
	char operand[COMMENT_INDEX];
	char comment[MAX_STR_SIZE - COMMENT_INDEX];
} Asm;

// Удаляет символ '\n' из конца строки.
bool trimNewLine(char* str);

// Возвращает разобранную строку ассемблера.
Asm parse(const str s);

#endif
