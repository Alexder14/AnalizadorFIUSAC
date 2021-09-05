package Generadores;

/**
 *
 * @author Alexder
 */
public class GSintactico {
    public static void main(String[] args)
    {
        String opciones[] = new String[7]; 
        
        //Seleccionamos la opción de dirección de destino
        opciones[0] = "-destdir";
        
        //Le damos la dirección, carpeta donde se va a generar el parser.java & el simbolosxxx.java
        opciones[1] = "C:/Users/Alexder/Documents/NetBeansProjects/AnalizadorFIUSAC/src/Analizador";
        
        //Seleccionamos la opción de nombre de archivo simbolos
        opciones[2] = "-symbols"; 
        
        //Le damos el nombre que queremos que tenga
        opciones[3] = "Simbolos";
        
        //Seleccionamos la opcion de clase parser
        opciones[4] = "-parser";         
        
        //Le damos nombre a esa clase del paso anterior
        opciones[5] = "Sintactico"; 
        
        //Le decimos donde se encuentra el archivo .cup 
        opciones[6] = "C:/Users/Alexder/Documents/NetBeansProjects/AnalizadorFIUSAC/src/Analizador/A_Sintactico.cup"; 
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
