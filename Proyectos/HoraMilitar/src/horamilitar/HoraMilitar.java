/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package horamilitar;

import java.io.File;
import java.io.FileReader;

/**
 *
 * @author Diego
 */
public class HoraMilitar {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        try {
            String ruta = "src\\horamilitar\\fuente.txt";
            String archivo = new File(ruta).getAbsolutePath();
            Lexer lex = new Lexer (new FileReader(archivo));
            lex.yylex(); //Compilar
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }
    
}
