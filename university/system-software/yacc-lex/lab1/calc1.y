%{
#define	YYSTYPE	double

int fib(int n);
%}

%token DATA
%left '+' '-'
%left '*' '/'
%left '$'
%%

spisok :	/* ���� */
  | spisok '\n'
  | spisok wyrag '\n' {printf("\t%g\n",$2);}
  ;
wyrag : DATA 		{ $$=$1; }
  | wyrag '+' wyrag	{ $$=$1+$3; }
  | wyrag '-' wyrag	{ $$=$1-$3; }
  | wyrag '*' wyrag	{ $$=$1*$3; }
  | wyrag '/' wyrag	{ $$=$1/$3; }
  | '(' wyrag ')'	{ $$=$2; }
  | wyrag '$'		{ $$=fib($1); }
  ;
%%

#include <stdio.h>
#include <ctype.h>

main()
{
	yyparse();
}

yyerror(s)
char *s;
{
	fprintf(stderr,"%s\n",s);
}

yylex()
{
	int c;
	
	do{
		c=getchar();
	}while(c==' ' || c=='\t');
	
	if(c==EOF)
		return 0;
	if(c=='.' || isdigit(c)){
		ungetc(c,stdin);
		scanf("%lf",&yylval);
		return DATA;
	}
	
	return c;
}

int fib(int n)
{
	int a = 0, b = 1, c;
	if(n==0)
		return a;
	for(int i = 2; i <= n; i++)
	{
		c = a + b;
		a = b;
		b = c;
	}
	return b;
}
