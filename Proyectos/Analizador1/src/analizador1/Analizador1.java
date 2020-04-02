
package analizador1;
import java.io.*;

public class Analizador1 {

    public static void main(String[] args) {
        try {
            String archivo = "src\\analizador1\\fuente.txt";
            String ruta = new File(archivo).getAbsolutePath();
            Lexer lex = new Lexer(new FileReader(ruta));
            lex.yylex();
            
            if (lex.errlex.isEmpty()){
                System.out.println("Compilación Correcta\n");
                System.out.println(lex.ts.toString());
            }
            else{
                System.err.println("Compilación Incorrecta");
                System.err.println(lex.errlex);
            }
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
    }
    
}
