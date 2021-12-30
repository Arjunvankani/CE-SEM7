%option noyywrap
%{
#include<stdio.h>
%}
%%
%%
int main()
{
printf("Name : Arjun Vankani \n Enrollment Number : 180210107060 \n Sem : 7th \n Subject: Compiler Design");
yylex();
return 0;
}
