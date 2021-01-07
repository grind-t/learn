#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdbool.h>
#include "map.h"
#include "vec.h"

#define MAX_STR 256
#define MAX_ARGS 10
#define COMMENT_POS 40

typedef char str[MAX_STR];
typedef vec_t(str) vec_s_t;
typedef map_t(Range) map_range_t;

// Диапазон [start, end].
typedef struct Range {
    int start;
    int end; 
} Range;

vec_s_t deftab; // Таблица с макроопределениями.
map_range_t namtab; // Таблица с именами макроопределений и их диапазонами в deftab.
FILE* in; // Входной файл.
FILE* out; // Выходной файл.

// Получает имя макроопределения из ассемблерной строки.
void getName(char* dst, const char* src);

// Получает оператор из ассемблерной строки.
void getOpcode(char* dst, const char* src);

// Получает список аргументов из строки с макропараметрами.
int getArgs(char** dst, const char* src);

// Удаляет комментарий из ассемблерной строки.
void eraseComment(char* s);

// Удаляет пробелы с правой части строки.
void trimRight(char* s);

// Заменяет все вхождения oldSub на newSub в s.
void replace(char* s, const char* oldSub, const char* newSub);

// Добавляет макроопределение (возможно вложенное) в deftab и namtab.
void define(const char* s);

// Аналогично define, но вызывается во время расширения предложения макроинициализации.
int defineDuringExpanding(const char* s, int defStart, const char** argtab, int argtabLen);

// Расширяет предложение макроинициализации.
void expand(const char* s, const Range* def);

int test() {
    str macrodef = "RDBUFF  MACRO  &INDEV,&BUFADR,&RECLTH   МАКРОС ДЛЯ ЧТЕНИЯ В БУФЕР";
    str macroline = "TD    =X'&INDEV'";
    str name;
    str opcode;
    str argsstr;
    str argsArr[MAX_ARGS];
    char* args[MAX_ARGS];
    for (int i = 0; i < MAX_ARGS; i++) args[i] = argsArr[i];
    getName(name, macrodef);
    getOpcode(opcode, macrodef);
    sscanf(macrodef, "%*s%*s%s", argsstr);
    int argsLen = getArgs(args, argsstr);
    replace(macroline, args[0], "?0");

    if (strcmp(name, "RDBUFF") != 0)
        printf("getName fail\n");
    if (strcmp(opcode, "MACRO") != 0)
        printf("getOpcode fail\n");
    if (strcmp(args[2], "&RECLTH") != 0)
        printf("getArgs fail\n");
    if (strcmp(macroline, "TD    =X'?0'") != 0)
        printf("replace fail\n");
    
    return 0;
}

int main() {
    str buff;
    vec_init(&deftab);
    map_init(&namtab);
    in = fopen("in.txt", "r");
    out = fopen("out.txt", "w");
    while (fgets(buff, MAX_STR, in)) {
        str opcode;
        getOpcode(opcode, buff); 
        Range* def = map_get(&namtab, opcode);
        if (def != NULL)
            expand(buff, def);
        else if (strcmp(opcode, "MACRO") == 0)
            define(buff);
        else
            fputs(buff, out);
    }
    vec_deinit(&deftab);
    map_deinit(&namtab);
    fclose(in);
    fclose(out);
    return 0;
}

void getName(char* dst, const char* src) {
    *dst = '\0';
    if (!isspace(*src))
        sscanf(src, "%s", dst);
}

void getOpcode(char* dst, const char* src) {
    *dst = '\0';
    if (isspace(*src))
        sscanf(src, "%s", dst);
    else
        sscanf(src, "%*s%s", dst);
}

int getArgs(char** dst, const char* src) {
    str copy;
    strcpy(copy, src);
    char* arg = strtok(copy, ",");
    int len = 0;
    while (arg != NULL) {
        strcpy(*dst, arg);
        len++;
        dst++;
        arg = strtok(NULL, ",");
    }
    return len;
}

void eraseComment(char* s) {
    if (*s == '.')
        *s = '\0';
    else
        s[COMMENT_POS] = '\0';
}

void trimRight(char* s) {
    int i = strlen(s) - 1;
    while (isspace(s[i]))
        i--;
    s[i+1] = '\0';
}

void replace(char* s, const char* oldSub, const char* newSub) {
    char* pch = strstr(s, oldSub);
    while (pch != NULL) {
        int oldLen = strlen(oldSub);
        str other;
        strcpy(other, pch + oldLen);
        *pch = '\0';
        sprintf(s, "%s%s%s", s, newSub, other);
        pch = strstr(s, oldSub);
    }
}

void define(const char* s) {
    Range def;
    int level = 1;
    str buff;
    strcpy(buff, s);
    eraseComment(buff);
    trimRight(buff);
    str name;
    getName(name, buff);
    str argstr;
    sscanf(buff, "%*s%*s%s", argstr);
    str argarr[MAX_ARGS];
    char* args[MAX_ARGS];
    for (int i = 0; i < MAX_ARGS; i++) args[i] = argarr[i];
    int argsLen = getArgs(args, argstr);
    str proto;
    sprintf(proto, "%s %s", name, argstr);
    vec_push_str(&deftab, proto);

    def.start = deftab.length - 1;
    while (level > 0) {
        fgets(buff, MAX_STR, in);
        eraseComment(buff);
        trimRight(buff);
        if (buff[0] == '\0') 
            continue;  
        for (int i = 0; i < argsLen; i++) {
            char index[MAX_STR];
            sprintf(index, "?%d", i);
            replace(buff, args[i], index);
        }
        vec_push_str(&deftab, buff);

        str opcode;
        getOpcode(opcode, buff);
        if (strcmp(opcode, "MACRO") == 0) 
            level++;
        else if (strcmp(opcode, "MEND") == 0)
            level--;
    }
    def.end = deftab.length - 1;
    map_set(&namtab, name, def);
}

int defineDuringExpanding(const char* s, int defStart, const char** argtab, int argtabLen) {
    Range def;
    int level = 1;
    str buff;
    str name;
    getName(name, s);
    str argstr;
    sscanf(s, "%*s%*s%s", argstr);
    str argarr[MAX_ARGS];
    char* args[MAX_ARGS];
    for (int i = 0; i < MAX_ARGS; i++) args[i] = argarr[i];
    int argsLen = getArgs(args, argstr);
    str proto;
    sprintf(proto, "%s %s", name, argstr);
    vec_push_str(&deftab, proto);

    def.start = deftab.length - 1;
    while (level > 0) {
        defStart++;
        strcpy(buff, deftab.data[defStart]);
        for (int i = 0; i < argtabLen; i++) {
            str index;
            sprintf(index, "?%d", i);
            replace(buff, index, argtab[i]);
        }
        for (int i = 0; i < argsLen; i++) {
            str index;
            sprintf(index, "?%d", i);
            replace(buff, args[i], index);
        }
        vec_push_str(&deftab, buff);

        str opcode;
        getOpcode(opcode, buff);
        if (strcmp(opcode, "MACRO") == 0) 
            level++;
        else if (strcmp(opcode, "MEND") == 0)
            level--;
    }
    def.end = deftab.length - 1;
    map_set(&namtab, name, def);
    return defStart;
}

void expand(const char* s, const Range* def) {
    str argstr = "";
    if (isspace(*s)) {
        str name;
        sscanf(s, "%s%s", name, argstr);
        fprintf(out, ".%s %s\n", name, argstr);
    }
    else {
        str label, name;
        sscanf(s, "%s%s%s", label, name, argstr);
        fprintf(out, ".%s %s %s\n%s\n", label, name, argstr, label);
    }
    str argarr[MAX_ARGS];
    char* argtab[MAX_ARGS];
    for (int i = 0; i < MAX_ARGS; i++) argtab[i] = argarr[i];
    int argtabLen = getArgs(argtab, argstr);
    for (int i = def->start+1; i < def->end; i++) {
        str defLine;
        strcpy(defLine, deftab.data[i]);
        for (int i = 0; i < argtabLen; i++) {
            str index;
            sprintf(index, "?%d", i);
            replace(defLine, index, argtab[i]);
        }

        str opcode;
        getOpcode(opcode, defLine);
        Range* innerdef = map_get(&namtab, opcode);
        if (innerdef != NULL)
            expand(defLine, innerdef);
        else if (strcmp(opcode, "MACRO") == 0)
            i = defineDuringExpanding(defLine, i, argtab, argtabLen);
        else
            fprintf(out, "%s\n", defLine);
    }
}
