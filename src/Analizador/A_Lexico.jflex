/*--------------------------------------------------
 ------------  1ra Area: Codigo de Usuario ---------
 ---------------------------------------------------*/

//------> Paquetes,importaciones
package Analizador;
import java_cup.runtime.*;
import javax.swing.JOptionPane;
import analizadorfiusac.Editor;
import analizadorfiusac.Errores;

/*----------------------------------------------------------
  ------------  2da Area: Opciones y Declaraciones ---------
  ----------------------------------------------------------*/
%%
%{
    //----> Codigo de usuario en sintaxis java
%}

//-------> Directivas
%public 
%class Analizador_Lexico
%cupsym Simbolos
%cup
%char
%column
%full 
%line
%unicode

//------> Expresiones Regulares
digito              = [0-9]+
decimal             = [0-9]+("."[  |0-9]+) 
letra               = [a-zA-ZÑñ]+
id                  = {letra}({letra}|{digito}|"_")*
cadena              = [\"][^\"\n]+[\"]


LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]

comentariosimple    = "//" {InputCharacter}* {LineTerminator}?

//------> Estados

%%

/*------------------------------------------------
  ------------  3ra Area: Reglas Lexicas ---------
  ------------------------------------------------*/

//-----> Simbolos

"+"         { System.out.println("Reconocio "+yytext()+" mas"); return new Symbol(Simbolos.mas, yycolumn, yyline, yytext()); }
"-"         { System.out.println("Reconocio "+yytext()+" menos"); return new Symbol(Simbolos.menos, yycolumn, yyline, yytext()); }
"*"         { System.out.println("Reconocio "+yytext()+" por"); return new Symbol(Simbolos.por, yycolumn, yyline, yytext()); }
"/"         { System.out.println("Reconocio "+yytext()+" div"); return new Symbol(Simbolos.div, yycolumn, yyline, yytext()); }
"("         { System.out.println("Reconocio "+yytext()+" para"); return new Symbol(Simbolos.para, yycolumn, yyline, yytext()); }
")"         { System.out.println("Reconocio "+yytext()+" parc"); return new Symbol(Simbolos.parc, yycolumn, yyline, yytext()); }
"="         { System.out.println("Reconocio "+yytext()+" igual"); return new Symbol(Simbolos.igual, yycolumn, yyline, yytext()); }
";"         { System.out.println("Reconocio "+yytext()+" pyc"); return new Symbol(Simbolos.pyc, yycolumn, yyline, yytext()); }
"<"         { System.out.println("Reconocio "+yytext()+" menorque"); return new Symbol(Simbolos.menorque, yycolumn, yyline, yytext()); }
">"         { System.out.println("Reconocio "+yytext()+" mayorque"); return new Symbol(Simbolos.mayorque, yycolumn, yyline, yytext()); }
"=="        { System.out.println("Reconocio "+yytext()+" igualigual"); return new Symbol(Simbolos.igualigual, yycolumn, yyline, yytext()); }
"!="        { System.out.println("Reconocio "+yytext()+" diferencia"); return new Symbol(Simbolos.diferencia, yycolumn, yyline, yytext()); }
"<="        { System.out.println("Reconocio "+yytext()+" menorque"); return new Symbol(Simbolos.menorque, yycolumn, yyline, yytext()); }
">="        { System.out.println("Reconocio "+yytext()+" mayorque"); return new Symbol(Simbolos.mayorque, yycolumn, yyline, yytext()); }
"&&"        { System.out.println("Reconocio "+yytext()+" and"); return new Symbol(Simbolos.and, yycolumn, yyline, yytext()); }
"||"        { System.out.println("Reconocio "+yytext()+" or"); return new Symbol(Simbolos.or, yycolumn, yyline, yytext()); }
"!"         { System.out.println("Reconocio "+yytext()+" not"); return new Symbol(Simbolos.not, yycolumn, yyline, yytext()); }
"**"        { System.out.println("Reconocio "+yytext()+" potencia"); return new Symbol(Simbolos.potencia, yycolumn, yyline, yytext()); }
"-"         { System.out.println("Reconocio "+yytext()+" unario"); return new Symbol(Simbolos.unario, yycolumn, yyline, yytext()); }

//-----> Palabras reservadas
"let"         { System.out.println("Reconocio "+yytext()+" let"); return new Symbol(Simbolos.let, yycolumn, yyline, yytext()); }
"const"         { System.out.println("Reconocio "+yytext()+" constante"); return new Symbol(Simbolos.constante, yycolumn, yyline, yytext()); }
"var"         { System.out.println("Reconocio "+yytext()+" var"); return new Symbol(Simbolos.var, yycolumn, yyline, yytext()); }
"if"       { System.out.println("Reconocio "+yytext()+" if"); return new Symbol(Simbolos.if, yycolumn, yyline, yytext()); }
"else"      { System.out.println("Reconocio "+yytext()+" else"); return new Symbol(Simbolos.else, yycolumn, yyline, yytext()); }
"for"        { System.out.println("Reconocio "+yytext()+" for"); return new Symbol(Simbolos.for, yycolumn, yyline, yytext()); }
"while"        { System.out.println("Reconocio "+yytext()+" while"); return new Symbol(Simbolos.while, yycolumn, yyline, yytext()); }
"do"           { System.out.println("Reconocio "+yytext()+" do"); return new Symbol(Simbolos.do, yycolumn, yyline, yytext()); }
"switch"         { System.out.println("Reconocio "+yytext()+" switch"); return new Symbol(Simbolos.switch, yycolumn, yyline, yytext()); }
"case"           { System.out.println("Reconocio "+yytext()+" case"); return new Symbol(Simbolos.case, yycolumn, yyline, yytext()); }
"default"        { System.out.println("Reconocio "+yytext()+" default"); return new Symbol(Simbolos.default, yycolumn, yyline, yytext()); }


//-------> Simbolos ER
{digito}    { System.out.println("Reconocio "+yytext()+" digito"); return new Symbol(Simbolos.digito, yycolumn, yyline, yytext()); }
{decimal}    { System.out.println("Reconocio "+yytext()+" decimal"); return new Symbol(Simbolos.decimal, yycolumn, yyline, yytext()); }
{id}    { System.out.println("Reconocio "+yytext()+" id"); return new Symbol(Simbolos.id, yycolumn, yyline, yytext()); }
{cadena}    { System.out.println("Reconocio "+yytext()+" cadena"); return new Symbol(Simbolos.cadena, yycolumn, yyline, yytext()); }


//------> Espacios
{comentariosimple}      { System.out.println("Comentario: "+yytext()); 
                            Editor.lista_comentarios.add(yytext());
                        }

[ \t\r\n\f]             {/* Espacios en blanco, se ignoran */}

//------> Errores Lexicos
.                       { System.out.println("Error Lexico"+yytext()+" Linea "+yyline+" Columna "+yycolumn); 
                           Errores nuevo_error = new Errores("Error Lexico", yytext(), yyline, yycolumn);
                           Editor.lista_errores.add(nuevo_error);
                        }