#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <string.h>
#include "strutils.h"

void test_strreplace() {
    char s[32] = "hello world";
    strreplace(s, 32, "l", "1");
    assert(strcmp(s, "he11o wor1d") == 0);
    strreplace(s, 32, "1", "one");
    assert(strcmp(s, "heoneoneo woroned") == 0);
    strreplace(s, 32, "one", "l");
    assert(strcmp(s, "hello world") == 0);
}

void test_strrtrim() {
    char s[] = "hello world   ";
    strrtrim(s);
    assert(strcmp(s, "hello world") == 0);
    s[0] = ' ';
    s[1] = '\0';
    strrtrim(s);
    assert(s[0] == '\0');
}

int main() {
    test_strreplace();
    return 0;
}