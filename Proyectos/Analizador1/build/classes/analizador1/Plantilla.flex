package analizador1;
import java.util.ArrayList;
%%

%class Lexer
%line
%column

%{  
    public String errlex="";
    public ArrayList<Token> ts = new ArrayList<Token>();
%}

a = [a-zA-Z]
n = [0-9]
s = "_"
x = [\n\t\r ]

num = {n}+
real = {n}+ "."  {n}+
id = {a} ({a}|{n}|{s})*
cad = "\"" ({a}|{n}|{s}|" ")*   "\"" 
cor = {a} ({a}|{n}|{s}|".")* "@" {a}+ "."{a}{a}{a}?("."{a}{a})?



%%

{num}  {ts.add(new Token("Entero",yytext()));}
{real}  {ts.add(new Token("Real",yytext()));}
{id} {ts.add(new Token("Identificador",yytext()));}
{cad} {ts.add(new Token("Cadena",yytext()));}
{cor} {ts.add(new Token("Correo",yytext()));}

{x}  {}
. {errlex+=("\nError Lexico, en linea: " + (yyline+1) + ", " + (yycolumn+1) + " caracter no válido "  + yytext());} 