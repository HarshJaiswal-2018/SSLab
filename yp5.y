%{
#include<stdio.h>
#include<stdlib.h>
%}

%token Num NL

%%
stmt : Num Num expr NL {printf("Contains more than 3 letters \n"); exit(0);}
;
expr : Num expr
|Num
;

%%

int yyerror(char*msg)
{
printf("Invalid contains less than 3 letters\n");
exit(0);
}

int main()
{
printf("Enter the expression: \n");
yyparse();
return 1;
}
