correoselectornicos;
%%
%class Lexer
%line
%column

a = [a-zA-Z]
n = [0-9]
s = "#-_"
p = "."
r = "@"
x = [\n\t\r ]

ex = {a} ({a}|{n}|{s}|{p})*{r}({a}+){p}({a}{a}{a}|{a}{a})({p}{a}{a})?

%%

{ex} {System.out.println("Token Correo Electronico  " + yytext());}
{x} {}
. {System.err.println("Error Lexico, en linea" + (yyline+1) + " " + (yycolumn+1));}