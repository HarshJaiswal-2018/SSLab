%{
#include<stdio.h>
#include<stdlib.h>
%}

%token LETTER DIGIT UND NL
%%
stmt : var NL {printf("VALID \n"); exit(0);}
;
var : LETTER alpha
|UND alpha
;
alpha : LETTER alpha
|DIGIT alpha
|UND alpha
|LETTER
|DIGIT
|UND
;
%%

int yyerror(char*msg)
{
printf("INVALID: \n");
exit(0);
}

int main()
{
printf("Enter the expression: \n");
yyparse();
return 1;
}
