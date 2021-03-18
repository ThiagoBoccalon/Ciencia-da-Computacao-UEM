package Grafos;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author GCD
 */
public class Main {
    public static void main(String[] args) throws FileNotFoundException, IOException {     
        
        
        int numero;
        Scanner entrada = new Scanner(System.in);
        
      
        System.out.println("1 - TS");
        System.out.println("2 - SCC");
        System.out.println("Escolha o algoritmo:");
        numero = entrada.nextInt();        
        System.out.println("\n");
            
        switch(numero){
            
            case 1:{ 
                Grafo grafo = LerArquivoGrafo.criarGrafo("c:/ts.tgf");
                TopologicalSort ts = new TopologicalSort(grafo);
                List<Integer> listTS = ts.executeTopologicalSort();
                TestePrinter.listaTS(grafo, listTS);
                break;
            }
            case 2:{
                Grafo grafo = LerArquivoGrafo.criarGrafo("c:/scc.tgf");
                Dfs dfs = new Dfs(grafo);
                dfs.executeDFS();
                DfsScc dfsc = new DfsScc(grafo, dfs);
                dfsc.executeDFS();
                TestePrinter.imprimeSCC(grafo, dfsc);
                break;
            }
    
        
                
    }
    
    
    }
    
}