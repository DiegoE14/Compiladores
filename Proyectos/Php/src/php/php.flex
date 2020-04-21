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

//ALPHABETS
lyrics = [a-zA-Z]
number = [0-9]
espace = [\n\t\r ]
p = [$]
sign = [><]
sign2 = [+-]
i = [=]
d = [!]
x=[&]
y=[|]

//REGULAR EXPRESSIONS
word = {p}({number}|{lyrics})+
condition1 = ({word}|{number}+)({sign}|{sign}{i}|{d}{i})({word}|{number}+)
condition = {condition1}({espace}({x}{x}|{y}{y}){espace}{condition1})*

assignment = {word}{i}({word}|{number}+)({sign2}({word}|{number}+))*

re = "while"{espace}"("{condition}")"{espace}"{"{assignment}"}"


%%
//RESERVED WORDS 
"{"  {ts.add(new Token("Open keys: attributes",yytext()));}
"}"  {ts.add(new Token("close keys: attributes",yytext()));}
"("  {ts.add(new Token("Open parenthesis: attributes",yytext()));}
")"  {ts.add(new Token("Close parenthesis: attributes",yytext()));}
"while"  {ts.add(new Token("while: attributes",yytext()));}

//TOKENS - RE
{re}  {ts.add(new Token("Command PHP",yytext()));}
{condition}  {ts.add(new Token("Condition Attribute",yytext()));}
{assignment}  {ts.add(new Token("Assignment attribute",yytext()));}
{espace}  {}
. {errlex+=("\nLexical error, in line: " + (yyline+1) + ", in column: " + (yycolumn+1) + " invalid character: "  + yytext());} 