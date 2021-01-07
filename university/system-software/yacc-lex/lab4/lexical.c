#include <stdio.h>
#include <ctype.h>
#include "y.tab.h"

extern unsigned int nline;

yylex()
{
    int c;

    do{
        c = getchar();
    }while(c == ' ' || c == '\t');

    if(c == EOF)
        return 0;
    if(c == '.' || isdigit(c)){
        ungetc(c, stdin);
        scanf("%lf", &yylval.data);
        return DATA;
    }
    if(islower(c)){
        yylval.index = c-'a';
        return VAR;
    }
    if(c == '\n')
        nline++;
    return c;
}

resynch() 
{
    int c;
    do{
        c = getchar();
    }while(c != '\n');
    ungetc(c, stdin);
}
