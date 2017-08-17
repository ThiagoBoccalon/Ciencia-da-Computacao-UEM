/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelanimais;
import java.util.Scanner;

       
/**
 *
 * @author Thiago
 */
public class Porte {
    private double altura;
    private double comprimento;
    private double peso;
    private String porteAnimal;
    //private final double comprimeto;
  
    
public Porte (double altura, double comprimento, double peso, String porteAnimal) {
    this.altura = altura;
    this.comprimento = comprimento;
    this.peso = peso;
    this.porteAnimal = porteAnimal;
        
}



public String porteAnimal (String porteAnimal){
    if ((this.altura <= 0.80) && (this.comprimento <= 1.00) && (this.peso <= 3.5)) {
            return porteAnimal = "Pequenho";
    } else {
        
        if ((this.altura <= 1.5) && (this.comprimento <= 1.6) && (this.peso <= 10.5)) {
        return porteAnimal = "Medio"; 
            
            } else {  
              return porteAnimal = "Grande";}
        }
    }
}


