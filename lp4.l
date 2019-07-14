%{
int vows=0,cons=0,num=0,spc=0,lns=0;
%}

%%
[aeiouAEIOU] {vows++;}
[a-zA-Z] {cons++;}
[0-9]+ {num++;}
[\n] {lns++;}
[ ] {;}
[\t] {;}
. {spc++;}

%%

int yywrap()
{
return 1;
}

int main()
{
printf("Enter the expression: \n");
yylex();
printf("No. of vowels: %d\n",vows);
printf("No. of consonants: %d\n",cons);
printf("No. of numbers: %d\n",num);
printf("No. of special characters: %d\n",spc);
printf("No. of lines: %d\n",lns);
return 1;
}
