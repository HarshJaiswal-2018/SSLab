%{
int iden=0,slc=0,mlc=0,oper=0;
%}

%%
"/*"[^("*/")]+"*/" {mlc++;}
"//" {slc++;}
[+\-*/] {oper++;}
[a-zA-Z][a-zA-Z0-9_]* {iden++;}
[\n] {;}
. {;}
%%

int yywrap()
{
return 1;
}

int main()
{
printf("Enter the expression: \n");
yylex();
printf("No. of identifiers: %d\n",iden);
printf("No. of operators: %d\n",oper);
printf("No. of single line comments: %d\n",slc);
printf("No. of multi line comments: %d\n",mlc);
return 1;
}
