package analexl;
%%
%class Lexer
%line
%column

a = [a-zA-Z]
n = [0-9]
s = "_"
x = [\n\t\r ]

num = {n}+
real = {n}+ "." {n}+
id = {a} ({a}|{n}|{s})*

%%

{num} {System.out.println("Token entero  " + yytext());}
{real} {System.out.println("Token real " + yytext());}
{id} {System.out.println("Token variable " + yytext());}
{x} {}
. {System.err.println("Error Lexico, en linea" + (yyline+1) + " " + (yycolumn+1));}