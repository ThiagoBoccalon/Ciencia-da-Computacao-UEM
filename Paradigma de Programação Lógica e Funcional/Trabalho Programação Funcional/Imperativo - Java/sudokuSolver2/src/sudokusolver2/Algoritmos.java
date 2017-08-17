/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sudokusolver2;

import java.util.ArrayList;
import javax.sound.midi.Soundbank;

/**
 *
 * @author shaolin
 */
public class Algoritmos {
    
    public static void soluciona(Tabuleiro tab){
        boolean melhoravel;
        int pMelhor[];
        Tabuleiro melhor;
        
        melhor = tab;
        if (!ehSolucao(tab)){
            melhoravel = true;
            while (melhoravel){
                Algoritmos.removeImproprios(tab);
                melhoravel = Algoritmos.fixaTodos(tab);
            }
            Tabuleiro raiz = new Tabuleiro();
            tab.setPai(raiz);
            ArrayList<Tabuleiro> abertos = new ArrayList<>();
            abertos.add(tab);
            while(!ehSolucao(melhor)){
                melhor = abertos.get(0);
                pMelhor = buscaMelhor(melhor);
                fazFilhos(melhor, pMelhor, abertos);
                Algoritmos.fixaTodos(melhor);
                abertos.remove(0);
            }
        }
        System.out.println("\n\n======== SOLUCAO ========");
        Tabuleiro.mostraTabuleiro(melhor);
    }
    
    public static void atualizarPossiveis(Tabuleiro tab, int i, int j, int aRemover){
        ArrayList<Integer> lista;
        Celula c;
        for (int jc=0; jc<9; jc++){     //verifica linha
            lista = new ArrayList<>();
            if (tab.getTabuleiro()[i][jc].getValorFixo() == 0){
                for (Integer k : tab.getTabuleiro()[i][jc].getListaPossiveis()){
                    if (k != aRemover){
                        lista.add(k);
                    }
                }
                c = new Celula(lista, true, 0);
                tab.getTabuleiro()[i][jc] = c;
            }
        }
        for (int il=0; il<9; il++){
        lista = new ArrayList<>();
            if (tab.getTabuleiro()[il][j].getValorFixo() == 0){
                for (Integer k : tab.getTabuleiro()[il][j].getListaPossiveis()){
                    if (k != aRemover){
                        lista.add(k);
                    }
                }
                c = new Celula(lista, true, 0);
                tab.getTabuleiro()[il][j] = c;
            }
        }
    }
    
    public static void fazFilhos(Tabuleiro tab, int[] pos, ArrayList<Tabuleiro> abertos){
        int i,j;
        i = pos[0];
        j = pos[1];
        for (int k=0; k<tab.getTabuleiro()[i][j].getListaPossiveis().size(); k++){
            Tabuleiro novo = new Tabuleiro();
            copiaTabuleiro(tab, novo);
            int valor = tab.getTabuleiro()[i][j].getListaPossiveis().get(k);
            novo.getTabuleiro()[i][j].setValorFixo(valor);
            novo.getTabuleiro()[i][j].setTroca(false);
            int zeros = tab.getnZeros();
            novo.setnZeros(zeros-1);
            atualizarPossiveis(novo, i, j, valor);
            abertos.add(novo);
            
        }
    }
    
    public static int[] buscaMelhor(Tabuleiro tab){    //pega primeira posicao q encontrar com lista pequena
        boolean achou;
        int melhor, i, j;
        int sai[] = new int[2];
        
        achou = false;
        melhor = 2;     //quantidade de valores possiveis na lista
        while (!achou){
            i=0;
            while (!achou && i<9){
                j=0;
                while(!achou && j< 9){
                    if (tab.getTabuleiro()[i][j].isTroca()){
                        if (tab.getTabuleiro()[i][j].getListaPossiveis().size() < melhor){
                            sai[0]=i;
                            sai[1]=j;
                            achou = true;
                        }    
                    }
                    
                    j++;   
                }
                i++;
            }
            melhor++;
        }
        return sai;
    }
    
    public static void copiaTabuleiro(Tabuleiro tab, Tabuleiro novo){
        for (int i=0; i<9; i++){
            for (int j=0; j<9; j++){
                ArrayList<Integer> lista = new ArrayList<>();
                if (tab.getTabuleiro()[i][j].isTroca()){
                    for (Integer v : tab.getTabuleiro()[i][j].getListaPossiveis()){
                        lista.add(v);
                    }
                }
                int valor = tab.getTabuleiro()[i][j].getValorFixo();
                boolean troca = tab.getTabuleiro()[i][j].isTroca();
                Celula c = new Celula(lista, troca, valor);
                novo.getTabuleiro()[i][j] = c;
            }
                
        }
        novo.setPai(tab);
        int zeros = tab.getnZeros();
        novo.setnZeros(zeros);
    }
    
    public static boolean fixaTodos(Tabuleiro tab){
        int zeros, aux;
        boolean melhoravel;
        melhoravel = false;
        zeros = 0;
        for (int i=0; i<9; i++){
            for (int j=0; j<9; j++){
                if (tab.getTabuleiro()[i][j].isTroca()){
                    if (tab.getTabuleiro()[i][j].getListaPossiveis().size() == 1){
                        int valor = tab.getTabuleiro()[i][j].getListaPossiveis().get(0);
                        tab.getTabuleiro()[i][j].setValorFixo(valor);
                        tab.getTabuleiro()[i][j].setTroca(false);
                        tab.getTabuleiro()[i][j].getListaPossiveis().remove(0);
                        zeros++;
                    }
                }
            }
        }
        if (zeros > 0){
            aux = tab.getnZeros();
            tab.setnZeros(aux-zeros);
            melhoravel = true;
        }
        return melhoravel;
    }
    
    public static void removeImproprios(Tabuleiro tab){
        boolean achou;
        int il, jc, valor;
        for (int i=0; i<9; i++){
            for (int j=0; j<9; j++){
                if (tab.getTabuleiro()[i][j].isTroca()){
                    int tam = tab.getTabuleiro()[i][j].getListaPossiveis().size();
                    ArrayList<Integer> aRemover = new ArrayList<>();
                    for (int k=0; k<tam; k++){      //verifica linha
                        valor = tab.getTabuleiro()[i][j].getListaPossiveis().get(k);
                        achou = false;
                        jc = 0;
                        while (!achou && jc<9){
                            if (!tab.getTabuleiro()[i][jc].isTroca() && jc != j){
                                if (valor == tab.getTabuleiro()[i][jc].getValorFixo()){
                                    achou = true;
                                    aRemover.add(valor); 
//                                    System.out.println("removeu: "+valor+"- linha>"+i+"- coluna>"+j+" - ja tinha em: "+i+"x"+jc);
                                }
                            }
                            jc++;
                        }
                    }
                    for (Integer v : aRemover) {
                        tab.getTabuleiro()[i][j].getListaPossiveis().remove(v);
                    }
                    
                    tam = tab.getTabuleiro()[i][j].getListaPossiveis().size();
                    aRemover = new ArrayList<>();
                    for (int k=0; k<tam; k++){
                        valor = tab.getTabuleiro()[i][j].getListaPossiveis().get(k);
                        achou = false;
                        il = 0;
                        while (!achou && il<9){
                            if (!tab.getTabuleiro()[il][j].isTroca() && il != i){
                                if (valor == tab.getTabuleiro()[il][j].getValorFixo()){
                                    achou = true;
                                    aRemover.add(valor); 
//                                    System.out.println("removeu: "+valor+"- linha>"+i+"- coluna>"+j+" - ja tinha em: "+il+"x"+j);
                                }
                            }
                            il++;
                        }
                    }
                    for (Integer v : aRemover) {
                        tab.getTabuleiro()[i][j].getListaPossiveis().remove(v);
                    }
                }
            }
        }
    }
    
    
    public static boolean ehSolucao(Tabuleiro tab){
        boolean resp;
        
        resp = true;
        if (!verificaLinhaColuna(tab) || !verificaQuadrante(tab)){
            resp = false;
        }
        
        return resp;
    }
    
    public static boolean verificaLinhaColuna(Tabuleiro tab){
        boolean resp;
        int i, j, il, jc;

        
        resp = true;
        i = 0;
        while (resp && i<9){
            j = 0;
            while (resp && j<9){
                if (tab.getTabuleiro()[i][j].getValorFixo() != 0){
                    il = i+1;
                    while (resp && il<9){
                        if (tab.getTabuleiro()[i][j] == tab.getTabuleiro()[il][j]){
                            resp = false;
                        }
                        il++;
                    }
                    jc = j+1;
                    while (resp && jc<9){
                        if (tab.getTabuleiro()[i][j] == tab.getTabuleiro()[i][jc]){
                            resp = false;
                        }
                        jc++;
                    }                    
                } else{
                    resp = false;
                }
                j++;
            }
            i++;
        }
        return resp;
    }
    
    public static boolean verificaQuadrante(Tabuleiro tab){
        int quad, i, j, imax, jmax;
        boolean resp;
        
        quad=1;    //numero de quadrantes
        i=0;
        resp = true;
        while (resp && quad<9){
            imax=0;
            ArrayList<Integer> lista = new ArrayList<>();
            if (quad <= 3){
                i = 0;
                imax=3;
            }
            if (quad > 3 && quad <= 6){
                i = 3;
                imax=6;
            }
            if (quad > 6){
                i = 6;
                imax=9;
            }            
            while (resp && i<imax){
                jmax=0;
                j=0;
                if (quad == 1 || quad == 4 || quad == 7){
                    j = 0;
                    jmax=3;
                }   
                if (quad == 2 || quad == 5 || quad == 8){
                    j = 3;
                    jmax=6;
                }
                if (quad == 3 || quad == 6 || quad == 9){
                    j = 6;
                    jmax=9;
                }  
                while (resp && j<jmax){
                    int valor = tab.getTabuleiro()[i][j].getValorFixo();
                    if ((valor == 0) || (lista.contains(valor))){
                        resp = false;
                    } else{
                        lista.add(valor);
                    }
                    j++;
                }
                i++;
            }
            quad++;
        }
        return resp;
    }
}
