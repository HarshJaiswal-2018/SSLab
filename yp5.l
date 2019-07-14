%{
#include "y.tab.h"
%}

%%
[0-9] {return Num;}
[\n] {return NL;}
. {return yytext[0];}
%%

