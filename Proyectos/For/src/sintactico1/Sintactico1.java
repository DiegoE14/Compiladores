package sintactico1;

import java.io.File;
import java.io.FileReader;

public class Sintactico1 {

    public static void main(String[] args) {
        try {
            String arc = (new File("src\\sintactico1\\fuente.txt")).getAbsolutePath();
            Lexer lex = new Lexer(new FileReader(arc));
            parser p = new parser(lex);
            p.parse();//compila 
            if (lex.errlex.length() == 0 && p.errsin.length() == 0) {
                System.out.println("Compilación Correcta");
                System.out.println(lex.ts.toString());
            } else {
                System.out.println("Compilación Incorrecta");
                System.err.println(lex.errlex);
                System.err.println(p.errsin);
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }

    }

}
