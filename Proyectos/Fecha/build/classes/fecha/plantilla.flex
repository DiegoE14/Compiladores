package fecha;
%%
%class Lexer
%line
%column

a = [0]
b = [1]
c = [2]
d = [3]
n = [4-9]
s = "-"
x = [\n\t\r ]

er = (({b}|{c})({a}|{b}|{c}|{d}|{n})|({b}|{c}|{d}|{n})|({d}({a}|{b}))){s}(({b}|{c}|{d}|{n})|{b}({a}|{b}|{c})){s}(({b}|{c})({a}|{b}|{c}|{d}|{n})({a}|{b}|{c}|{d}|{n})({a}|{b}|{c}|{d}|{n}))


%%

{er} {System.out.println("Token fecha  " + yytext());}

{x} {}
. {System.err.println("Error Lexico, en linea" + (yyline+1) + " " + (yycolumn+1));}