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
numero = [0-9]
espacio = [\n\t\r ]
p = [$]
signo = [><]
signo2 = [+-]
i = [=]
d = [!]
x=[&]
y=[|]

//EXPRESIONES REGULARES
palabra = {p}({numero}|{letra})+
condicion1 = ({palabra}|{numero}+)({signo}|{signo}{i}|{d}{i})({palabra}|{numero}+)
condicion = {condicion1}({espacio}({x}{x}|{y}{y}){espacio}{condicion1})*

asignacion = {palabra}{i}({palabra}|{numero}+)({signo2}({palabra}|{numero}+))*

er = "while"{espacio}"("{condicion}")"{espacio}"{"{asignacion}"}"


%%
//PALABRAS RESEVRVADAS 
"{"  {ts.add(new Token("Abrir llaves: attributos",yytext()));}
"}"  {ts.add(new Token("Cerrar llaves: attributos",yytext()));}
"("  {ts.add(new Token("Abrir parentesis: attributos",yytext()));}
")"  {ts.add(new Token("Cerrar parentesis: attributos",yytext()));}
"while"  {ts.add(new Token("while: attributos",yytext()));}

//TOKENS - ER
{er}  {ts.add(new Token("Comando PHP",yytext()));}
{condicion}  {ts.add(new Token("Atributo condicion",yytext()));}
{asignacion}  {ts.add(new Token("Atributo asignacion",yytext()));}
{espacio}  {}
. {errlex+=("\nError Lexico, en linea: " + (yyline+1) + ", " + (yycolumn+1) + " caracter no válido "  + yytext());} 