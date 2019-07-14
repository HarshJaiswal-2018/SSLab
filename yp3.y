%{
#include<stdio.h>
#include<stdlib.h>
%}
%token NUMBER NL
%left '+' '-'
%left '*' '/'
%%
stmt : expr NL {printf("Value of the expression is: %d\n",$1); exit(0);}
;
expr : expr '+' expr {$$=$1+$3;}
|expr '-' expr {$$=$1-$3;}
|expr '*' expr {$$=$1*$3;}
|expr '/' expr {$$=$1/$3;}
|'(' expr ')' {$$=$2;}
|NUMBER {$$=$1;}
;
%%
int yyerror(char*msg)
{
printf("Invalid Laure\n");
exit(0);
}
int main()
{
printf("Enter the expression: \n");
yyparse();
return 0;
}
