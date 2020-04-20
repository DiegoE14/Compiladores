package css;
import java.util.ArrayList;
%%

%class Lexer
%line
%column

%{  
    public String errlex="";
    public ArrayList<Token> ts = new ArrayList<Token>();
%}

//ALFABETOS
letra = [a-zA-Z]
hexa = [A-F]
numero = [0-9]
linea = "-"
espacio = [\n\t\r ]

//EXPRESIONES REGULARES
cadena = {letra} ({letra}|{linea}|{numero})*
valor = {hexa}|{numero}
comando = ("." | "#")? {cadena}
atributo_texto = {cadena} ":" "\""  ({cadena} | ",")+ "\""  ";"
atributo_numero = {cadena} ":"  {numero}+ {letra}{letra} ";"
atributo_var = {cadena} ":"  {cadena} ";"
atributo_color = {cadena} ":"  "#" {valor}{valor}{valor}{valor}{valor}{valor} ";"

%%
//PALABRAS RESEVRVADAS 
"{"  {ts.add(new Token("Abrir: attributos",yytext()));}
"}"  {ts.add(new Token("Cerrar: attributos",yytext()));}

//TOKENS - ER
{comando}  {ts.add(new Token("Comando CSS",yytext()));}
{atributo_texto}  {ts.add(new Token("Atributo texto",yytext()));}
{atributo_numero}  {ts.add(new Token("Atributo numero",yytext()));}
{atributo_var}  {ts.add(new Token("Atributo variable",yytext()));}
{atributo_color}  {ts.add(new Token("Atributo color",yytext()));}
{espacio}  {}
. {errlex+=("\nError Lexico, en linea: " + (yyline+1) + ", " + (yycolumn+1) + " caracter no válido "  + yytext());} 