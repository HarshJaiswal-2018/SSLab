%{
int ch=0,w=0,s=0,l=0;
%}

%%
/*[^ \t\n,."'/]+ {w++; c+=yyleng;}*/
[a-zA-Z0-9_]+ {w++; ch+=yyleng;}
[ ] {s++;}
[\t] {s+=4;}
[\n] {l++;}
. {ch++;}
%%

int yywrap()
{
return 1;
}

int main()
{
printf("Enter the expression: \n");
yylex();
printf("No. of words: %d\n",w);
printf("No. of characters: %d\n",ch);
printf("No. of spaces: %d\n",s);
printf("No. of lines: %d\n",l);
return 0;
}


