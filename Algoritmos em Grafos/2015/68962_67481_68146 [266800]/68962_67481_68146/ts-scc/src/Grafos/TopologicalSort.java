package Grafos;

import java.util.List;

/**
 *
 * @author GCD
 */
public class TopologicalSort {
        
    private Grafo grafo;
    
    public TopologicalSort(Grafo grafo){
        this.grafo = grafo;
    }
    
    public List<Integer> executeTopologicalSort(){
        Dfs dfs = new Dfs(grafo);        
        dfs.executeDFS();                         
        return dfs.getOrdemTop();        
    }
    
}
