%{
int stack=0,opd=0,opr=0,valid=1;
%}

%%
"(" {stack++;}
")" {stack--; if(stack<0) {valid=0;}}
[a-z][a-zA-Z0-9_]* {opd++; printf("%s is an operand\n",yytext);}
[+\-*\/] {opr++; printf("%s is an operator\n",yytext);}
. {return yytext[0];}
%%

int yywrap()
{
return 1;
}

int main()
{
printf("Enter the expresssion: \n");
yylex();
if(stack==0 && valid==1 && (opd-opr==1))
printf("Valid expression\n");
else
printf("Invalid Expression\n");
}
