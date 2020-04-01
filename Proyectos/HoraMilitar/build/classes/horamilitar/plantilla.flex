package horamilitar;
%%
%class Lexer
%line
%column

a = [0]
b = [1]
c = [2]
d = [3]
e = [4]
f = [5]
n = [6-9]
s = "-"
x = [\n\t\r ]

er = (({a}|{b})({a}|{b}|{c}|{d}|{e}|{f}|{n})){s}({a}|{b}|{c}|{d}|{e}|{f})({a}|{b}|{c}|{d}|{e}|{f}|{n})|({c}({a}|{b}|{c}|{d})){s}({a}|{b}|{c}|{d}|{e}|{f})({a}|{b}|{c}|{d}|{e}|{f}|{n})


%%

{er} {System.out.println("Token hora militar  " + yytext());}

{x} {}
. {System.err.println("Error Lexico, en linea" + (yyline+1) + " " + (yycolumn+1));}