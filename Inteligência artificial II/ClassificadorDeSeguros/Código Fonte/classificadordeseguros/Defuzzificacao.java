/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classificadordeseguros;

/**
 *
 * @author Suelen
 */
public class Defuzzificacao {
    Double somaValoresBaixo = 406.0;
    Double somaValoresMedio = 1188.0;
    Double somaValoresAlto = 2565.0;
    Double numeroValoresBaixo = 28.0;
    Double numeroValoresMedio = 23.0;                                            
    Double numeroValoresAlto = 29.0; 
    
    public Double defuzzificar(Double baixo, Double medio, Double alto){
        Double dividendo;
        Double divisor;
        
        dividendo = ((somaValoresBaixo * baixo)+(somaValoresMedio * medio)+(somaValoresAlto * alto));
        divisor = ((numeroValoresBaixo * baixo)+(numeroValoresMedio * medio)+(numeroValoresAlto * alto));
        return dividendo/divisor;
    }
}
