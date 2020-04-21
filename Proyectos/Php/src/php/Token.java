
package php;

public class Token {
    public String id;
    public String content;

    public Token(String id, String content) {
        this.id = id;
        this.content = content;
    }

    @Override
    public String toString() {
        return "\nToken{" + "id=" + id + ", content=" + content + '}';
    }
    
    
    
}
