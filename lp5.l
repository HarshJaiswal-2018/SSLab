%{
int pn=0,nn=0,pf=0,nf=0;
%}

%%
[0-9]+ {pn++;}
[-][0-9]+ {nn++;}
[0-9]*\.[0-9]+ {pf++;}
[-][0-9]*\.[0-9]+ {nf++;}
%%

int yywrap()
{
return 1;
}

int main()
{
printf("Enter the expression: \n");
yylex();
printf("No. of (+)ve numbers: %d\n",pn);
printf("No. of (-)ve numberss: %d\n",nn);
printf("No. of (+)ve fractions: %d\n",pf);
printf("No. of (-)ve fractions: %d\n",nf);
return 1;
}
