%{
#include<stdio.h>
#include<stdlib.h>
%}
%token A B NL
%%
stmt : C D NL {printf("VALID\n"); exit(0);}
;
C : A C
|A
| ;
D : B D
|B
| ;

%%

int yyerror(char *msg)
{
printf("Invalid\n");
exit(0);
}

int main()
{
yyparse();
return 0;
}

