%%
\"[^\"]*\" { yytext[yyleng-1] = '\0'; yytext++; printf("«%s»", yytext); }
%%
yywrap() { return(1); }
main() { yylex(); }