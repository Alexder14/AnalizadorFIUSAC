package Generadores;
import java.io.File;
/**
 *
 * @author Alexder
 */
public class GLexico {
     public static void main(String[] args) 
    {
        String path="C:/Users/Alexder/Documents/NetBeansProjects/AnalizadorFIUSAC/src/Analizador/A_Lexico.jflex";
        generarLexer(path);
    } 
    
    public static void generarLexer(String path)
    {
        File file=new File(path);
        jflex.Main.generate(file);
    } 
}
