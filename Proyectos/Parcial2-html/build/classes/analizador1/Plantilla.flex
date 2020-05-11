//INCLUSION DE PAQUETES Y CLASES 
package analizador1;
import java.util.ArrayList;
%%

%class Lexer
%line
%column

//VARIABLES PUBLICAS
%{  
    public String errlex="";
    public ArrayList<Token> ts = new ArrayList<Token>();
%}

//ALFABETOS
A =  [a-zA-Z]
I = [<]
F = [>]
B = [/]
X = "option"
D = [!]
R = [-]
O = [|]
C = [,]
P = [.]
IG = [=]
CO = [\"]
DP = [:]
GB = [_]
N = [1-9]
espacio = [\n\t\r ]


//EXPRESIONES REGULARES 
er = {I}{X}{F}{A}({A}|{espacio})*{I}{B}{X}{F}

ignorar1 = {I}"!DOCTYPE html"{F}
ignorar2 = {I}{D}{R}{R}{A}({A}|{espacio}|{O}|{C}|{P})*{R}{R}{F}
ignorar_etiquetas = ({I}|{B}{I})(("h")|("b")|("f")|("l")|("t")|("s")){A}{A}*{F}
ignorar_palabras = {A}({A}|{espacio})*
ignorar_signos = {I}|{F}|{B}|{IG}|{CO}|{P}|{DP}|{GB}|{R}
ignorar_numeros = {N}{N}*
%%
//PALABRAS RESERVADAS
{er}  {ts.add(new Token("Comando OPTION: ",yytext()));}
{espacio}  {}
{ignorar1}  {}
{ignorar2}  {}
{ignorar_etiquetas}  {}
{ignorar_palabras}  {}
{ignorar_signos}  {}
{ignorar_numeros}  {}
. {errlex+=("\nError Lexico, en linea: " + (yyline+1) + ", " + (yycolumn+1) + " caracter no válido "  + yytext());} 