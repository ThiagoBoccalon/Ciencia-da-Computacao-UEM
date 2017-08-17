/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sudokusolver2;

import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author shaolin
 */
public class Celula {
    private ArrayList<Integer> listaPossiveis;
    private boolean troca;  //false se nao pode ser trocado
    private int valorFixo;
    
    public Celula(ArrayList<Integer> lista, boolean troca, int valor){
        this.listaPossiveis = lista;
        this.troca = troca;
        this.valorFixo = valor;
    }
    
    public Celula(){
        ArrayList<Integer> lista = new ArrayList<>();
        lista.add(1);
        lista.add(2);
        lista.add(3);
        lista.add(4);
        lista.add(5);
        lista.add(6);
        lista.add(7);
        lista.add(8);
        lista.add(9);
        this.listaPossiveis = lista;
        this.troca = true;
        this.valorFixo = 0;
    }

    public ArrayList<Integer> getListaPossiveis() {
        return listaPossiveis;
    }

    public void setListaPossiveis(ArrayList<Integer> listaPossiveis) {
        this.listaPossiveis = listaPossiveis;
    }

    public boolean isTroca() {
        return troca;
    }

    public void setTroca(boolean troca) {
        this.troca = troca;
    }

    public int getValorFixo() {
        return valorFixo;
    }

    public void setValorFixo(int valorFixo) {
        this.valorFixo = valorFixo;
    }
    
    
    
}
