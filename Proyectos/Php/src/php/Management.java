/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package php;
import java.io.*;

/**
 *
 * @author Usuario
 */
public class Management {
    FileInputStream input;
    FileOutputStream output;
    File archive;
    
    public Management(){
        
    }
    //Open text archive
     public String OpenText(File archive){
         String content = "";
         try {
             input = new FileInputStream(archive);
             int ascci;
             while((ascci=input.read())!=-1){
                 char character = (char)ascci;
                 content+=character;
             }
         } catch (Exception e) {
         }
         return content;
     }
     //Save text archive
     public  String SaveText(File archive, String content){
         String answer = null;
         try {
             output = new FileOutputStream(archive);
             byte[] bytesTxt = content.getBytes();
             output.write(bytesTxt);
             answer = "Template saved successfully";
         } catch (Exception e) {
         }
         return answer;
     }
}
