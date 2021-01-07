#ifndef STRUTILS_H
#define STRUTILS_H
#include <stdlib.h>

void strreplace(char *s, size_t capacity, const char *oldsub, const char *newsub);

void strrtrim(char *s);

#endif