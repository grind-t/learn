#include <stdio.h>
#include <signal.h>
#include <setjmp.h>

void fpeerr();

jmp_buf jmp_env;

unsigned int nline = 1;

main() 
{
    signal(SIGFPE, fpeerr);
    if(setjmp(jmp_env));
    yyparse();
}

void fpeerr() 
{
    calc_error(2);
}

yyerror() 
{
    fprintf(stderr, "\nОшибка! Строка %u\n(00) Синтаксическая ошибка\n", nline);
}

char* ms_calc_error[] = {
    "",
    "Деление на 0",
    "Переполнение вещественного"
};

calc_error(int num) {
    fprintf(stderr, "\nОшибка! Строка %u\n(%02d) %s\n", nline, num, ms_calc_error[num]);
    longjmp(jmp_env, 1);
}