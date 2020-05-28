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
    public Symbol symbol(int type, object value){
        return new Symbol(type,yyline,yycolumn, value);
    }
%}

n = [0-9]
espacio = [\n\t\r ]

num = {n}+




%%
"+"  {ts.add(new Token("mas ", yytext()));return symbol(sym.mas);}
{num} {ts.add(new Token("Numero ", yytext()));return symbol(sym.num, new Integer(yytext()));}
{espacio} {}
. {errlex+="\nError lexico: " + yytext() + " caracter no valido en pos: " + (yyline+1) + "," + (yycolumn+1);}









