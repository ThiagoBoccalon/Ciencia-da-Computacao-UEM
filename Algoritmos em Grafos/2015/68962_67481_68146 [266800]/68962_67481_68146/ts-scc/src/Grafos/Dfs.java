/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Grafos;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;


/**
 *
 * @author GCD
 */
public class Dfs {

    
    private enum Cores{
        branco, cinza, preto;
    }
    private List<Integer> pi = new ArrayList<>();
    private List<Integer> d = new ArrayList<>();
    private List<Integer> f = new ArrayList<>();
    private List<Cores> cor = new ArrayList<>();        
    private List<Integer> ordemTop = new ArrayList<>();
    private List<LinkedList<Integer>> floresta = new ArrayList<>();
    private int tempo;
    private Grafo grafo;
    private int qualArvore;
    
    
    public Dfs(Grafo grafo){
        this.grafo = grafo;
    }
    
    public List<Integer> obtemVertices() {
        List<Integer> lista = new ArrayList<>();
        for(int i=0; i<grafo.countVertices(); i++){
            lista.add(i);
        }
        return lista;
        
    }
    
    public Grafo executeDFS(){        
        
        for(Integer u : obtemVertices()){
            cor.add(Cores.branco);
            pi.add(-1);
            d.add(-1); //inicilizar d e f 
            f.add(-1); //e manter esta lista com a quantidade de vertices
        }
        
        tempo = 0;        
        qualArvore = -1;
        
        for(Integer u : obtemVertices()){    
            
            if(cor.get(u) == Cores.branco){
                floresta.add(new LinkedList<Integer>());
                qualArvore++;
                dfsVisit(u);                
            }
        }
        
        return grafo;
    }
    
    public void dfsVisit(int u){             
        cor.set(u, Cores.cinza);
        tempo++;
        d.set(u, tempo);
        for(int v : grafo.obtemAdj(u)){
            if(cor.get(v) == Cores.branco){
                pi.set(v,u);
                dfsVisit(v);
            }
        }
        cor.set(u, Cores.preto);
        ordemTop.add(u);
        f.set(u, ++tempo);
        floresta.get(qualArvore).add(u);
    }

    public List<Integer> getOrdemTop() {
        return ordemTop;
    }

        
    public List<Integer> getPi() {
        return pi;
    }

    public List<Integer> getD() {
        return d;
    }

    public List<Integer> getF() {
        return f;
    }

    public List<Cores> getCor() {
        return cor;
    }

    public int getTempo() {
        return tempo;
    }

    public Grafo getGrafo() {
        return grafo;
    }

    public List<LinkedList<Integer>> getFloresta() {
        return floresta;
    }

    public int getQualArvore() {
        return qualArvore;
    }
    
    
    
    
}
