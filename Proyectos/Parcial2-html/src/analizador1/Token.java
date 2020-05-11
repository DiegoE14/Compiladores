
package analizador1;

public class Token {
    public String id;
    public String contenido;

    public Token(String id, String contenido) {
        this.id = id;
        this.contenido = contenido;
    }

    @Override
    public String toString() {
        return "\nToken{" + "id=" + id + ", contenido=" + contenido + '}';
    }
    
    
    
}
