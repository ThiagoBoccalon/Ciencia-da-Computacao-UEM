
package Grafos;

import java.util.List;

/**
 *
 * @author GCD
 */
public class SCC {
    
    private Grafo grafo;
    
    public SCC(Grafo grafo){
        this.grafo = grafo;
    }
    
    public List<Integer> executeSCC(){
        
        Dfs dfs = new Dfs(grafo);
        dfs.executeDFS();
        
        Grafo grafoT = grafo.obtemTransposto();
        
        DfsScc dfsT = new DfsScc(grafoT, dfs);
        dfsT.executeDFS();
                
        return null;
        
    }
    
}
