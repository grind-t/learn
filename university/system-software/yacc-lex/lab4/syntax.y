%{
#include <math.h>

float mem[26]; // Массив регистров.
%}

%union{
double data; // Числовое значение.
int index; // Индекс в массиве регистров.
}

%token <data> DATA
%token <index> VAR
%type <data> wyrag
%right '='
%left '+' '-'
%left '*' '/'
%left '^'
%left UNARYMINUS
%%

spisok :
    | spisok '\n'
    | spisok wyrag '\n' { printf("\t%g\n",$2); }
    | spisok error {
        resynch();
        yyclearin;
        yyerrok;
    }
    ;
wyrag : DATA { $$=$1; }
    | VAR { $$=mem[$1]; }
    | VAR '=' wyrag { $$=mem[$1]=$3; }
    | wyrag '+' wyrag { $$=$1+$3; }
    | wyrag '-' wyrag { $$=$1-$3; }
    | wyrag '*' wyrag { $$=$1*$3; }
    | wyrag '/' wyrag {
        if($3==0.)
            calc_error(1);
        $$=$1/$3;
    }
    | '(' wyrag ')' { $$=$2; }
    | wyrag '^' wyrag { $$=pow($1,$3); }
    | '-' wyrag %prec UNARYMINUS { $$=-$2; }
    ;
%%

