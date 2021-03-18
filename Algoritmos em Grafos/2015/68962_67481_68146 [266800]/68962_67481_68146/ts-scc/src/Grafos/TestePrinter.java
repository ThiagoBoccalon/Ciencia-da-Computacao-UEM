/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Grafos;

//import java.util.List;

import java.util.LinkedList;
import java.util.List;


/**
 *
 * @author GCD
 */
class TestePrinter {

        
    static void listaTS(Grafo grafo, List<Integer> listTS){        
        for(int i=listTS.size()-1; i>=0; i--){
            System.out.printf("%s\n", grafo.getRotuloVertice(listTS.get(i)));
        }
        
    }
    
    static void imprimeSCC(Grafo grafo, DfsScc dfsc){
        for(LinkedList<Integer> arvore: dfsc.getFloresta()){
            for(Integer i: arvore){
                System.out.printf("%s ", grafo.getRotuloVertice(i));
            }
            System.out.printf("\n");
        }        
    }
    
   
    
}
