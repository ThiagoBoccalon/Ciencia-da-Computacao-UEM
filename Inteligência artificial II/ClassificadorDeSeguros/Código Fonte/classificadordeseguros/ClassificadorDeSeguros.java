/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classificadordeseguros;

import interfaces.IntefaceClassificadorDeSeguros;

/**
 *
 * @author Suelen
 */
public class ClassificadorDeSeguros {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        IntefaceClassificadorDeSeguros interfaceSeguro = new IntefaceClassificadorDeSeguros();
        interfaceSeguro.setVisible(true);
    }
    
}
