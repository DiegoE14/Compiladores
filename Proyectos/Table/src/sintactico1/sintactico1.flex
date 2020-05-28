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
cad= ({a}|{n})({a}|{n}|"_"|" ")*



%%
"<table>"  {ts.add(new Token("Inicio tabla ", yytext()));return symbol(sym.ti);}
"</table>"  {ts.add(new Token("Fin tabla ", yytext()));return symbol(sym.tf);}
"<tr>"  {ts.add(new Token("Inicio Registro", yytext()));return symbol(sym.tri);}
"</tr>"  {ts.add(new Token("Fin Registro", yytext()));return symbol(sym.trf);}
"<td>"  {ts.add(new Token("Inicio Dato", yytext()));return symbol(sym.tdi);}
"</td>"  {ts.add(new Token("Fin Dato ", yytext()));return symbol(sym.tdf);}
"<th>"  {ts.add(new Token("Inicio encabezado tabla ", yytext()));return symbol(sym.thi);}
"</th>"  {ts.add(new Token("Fin encabezado tabla", yytext()));return symbol(sym.thf);}
{cad} {ts.add(new Token("Cadena ", yytext()));return symbol(sym.cad);}
{espacio} {}
. {errlex+="\nError lexico: " + yytext() + " caracter no valido en pos: " + (yyline+1) + "," + (yycolumn+1);}









