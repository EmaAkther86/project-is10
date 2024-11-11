
%{

#include<stdio.h>

%}

%%

[0-9]{1,3}    { if (atoi(yytext) <= 255) printf("%s is a Valid \n", yytext); else printf("%s is an Invalid Octet\n", yytext); }
\.            { printf("%s is a Dot\n", yytext); }
[^0-9\.]      { printf("%s is an Invalid Character\n", yytext); }
%%

int main()

{

yylex();

return 0;

}