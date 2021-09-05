/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Generadores;

/**
 *
 * @author Alexder
 */
public class GSintacticoFCA {
    public static void main(String[] args)
    {
        String opciones[] = new String[7]; 
        
        //Seleccionamos la opción de dirección de destino
        opciones[0] = "-destdir";
        
        //Le damos la dirección, carpeta donde se va a generar el parser.java & el simbolosxxx.java
        opciones[1] = "C:/Users/Alexder/Documents/NetBeansProjects/AnalizadorFIUSAC/src/AnalizadorFCA";
        
        //Seleccionamos la opción de nombre de archivo simbolos
        opciones[2] = "-symbols"; 
        
        //Le damos el nombre que queremos que tenga
        opciones[3] = "Simbolos_FCA";
        
        //Seleccionamos la opcion de clase parser
        opciones[4] = "-parser";         
        
        //Le damos nombre a esa clase del paso anterior
        opciones[5] = "Sintactico_FCA"; 
        
        //Le decimos donde se encuentra el archivo .cup 
        opciones[6] = "C:/Users/Alexder/Documents/NetBeansProjects/AnalizadorFIUSAC/src/AnalizadorFCA/A_SintacticoFCA.cup"; 
        try 
        {
            java_cup.Main.main(opciones);
        } 
        catch (Exception ex)
        {
            System.out.print(ex);
        }
    }
}
