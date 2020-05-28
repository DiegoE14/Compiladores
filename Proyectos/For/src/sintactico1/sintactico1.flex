package sintactico1;
import java.util.ArrayList;
import java_cup.runtime.*;
%%

%class Lexer
%line
%column 
%cup

%{
    public String errlex="";
    public ArrayList<Token> ts = new ArrayList<Token>(); 
    public Symbol symbol(int type){
        return new Symbol(type,yyline,yycolumn);
    }
%}

a = [a-zA-Z]
n = [0-9]
espacio = [\n\t\r ]

num = {n}+ ("."{n}+)? 
id = {a} ({a}|{n}|"_")*
op = "+" | "-" | "*"  | "/"



%%
"for"  {ts.add(new Token("reservada: for ", yytext()));return symbol(sym.xfor);}
"endfor"  {ts.add(new Token("reservada: endfor ", yytext()));return symbol(sym.endfor);}
"to"  {ts.add(new Token("reservada: for ", yytext()));return symbol(sym.to);}
"=" {ts.add(new Token("Asignacion ", yytext()));return symbol(sym.asignacion);}
";" {ts.add(new Token("Fin de instruccion ", yytext()));return symbol(sym.fin_i);}

"("  {ts.add(new Token("P. Izquierdo ", yytext()));return symbol(sym.pi);}
")" {ts.add(new Token("P. Derecho ", yytext()));return symbol(sym.pd);}
{num} {ts.add(new Token("Numero ", yytext()));return symbol(sym.num);}
{id} {ts.add(new Token("Identificador ", yytext()));return symbol(sym.id);}
{op} {ts.add(new Token("Operador ", yytext()));return symbol(sym.op);}
{espacio} {}
. {errlex+="\nError lexico: " + yytext() + " caracter no valido en pos: " + (yyline+1) + "," + (yycolumn+1);}









