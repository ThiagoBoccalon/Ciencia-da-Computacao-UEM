package Grafos;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author GCD
 */
public class DfsScc extends Dfs{
    
    private List<Integer> listaFDecrescente = new ArrayList<>();
    
    public DfsScc(Grafo grafo, Dfs dfs) {
        super(grafo.obtemTransposto());
        
        List<Integer> listaTempo = new ArrayList<>();
        
        for (int i=0; i<dfs.getTempo()+1; i++ ){
            listaTempo.add(i,-1);
        }        
        for(int i=0; i<dfs.getF().size();i++){
            listaTempo.set(dfs.getF().get(i), i);
        }

        for(int i=listaTempo.size()-1; i>=0; i-- ){
            if(listaTempo.get(i) != -1){
                listaFDecrescente.add(listaTempo.get(i));
            }
        }
           
    }
    
    

    @Override
    public List<Integer> obtemVertices() {
        return listaFDecrescente; 
    }
    
    
    
    
}
