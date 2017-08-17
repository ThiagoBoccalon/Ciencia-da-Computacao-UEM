/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sudokusolver2;

import java.io.BufferedReader;
import java.io.FileReader;

/**
 *
 * @author shaolin
 */
public class Tabuleiro {
    private Tabuleiro pai;
    private Celula[][] tabuleiro = new Celula[9][9];
    private int nZeros;
    
    public static Tabuleiro importTabuleiro(String entrada){
        Tabuleiro tab = new Tabuleiro();
        try {
            FileReader fr = new FileReader(entrada);
            BufferedReader br = new BufferedReader(fr);
            String vet[];
            String linha;
            int i, j, zeros;
            
            linha = br.readLine();
            i=0;
            zeros=0;
            while (br.ready()){
                vet = linha.split(" ");
                for (j=0; j<vet.length; j++){
                    Celula cel;
                    if (vet[j].equals("0")){
                        zeros++;
                        cel = new Celula();
                    } else{
                        cel = new Celula(null, false, Integer.parseInt(vet[j]));
                    }
                    tab.tabuleiro[i][j] = cel;
                }
                i++;
                linha = br.readLine();
            }
            vet = linha.split(" ");
            for (j=0; j<vet.length; j++){
                    Celula cel;
                    if (vet[j].equals("0")){
                        zeros++;
                        cel = new Celula();
                    } else{
                        cel = new Celula(null, false, Integer.parseInt(vet[j]));
                    }
                    tab.tabuleiro[i][j] = cel;
            } 
            tab.setnZeros(zeros);
            br.close();
            fr.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return tab;
    }
    
    public static void mostraTabuleiro(Tabuleiro tab){
        System.out.println("+-------+-------+-------+");
        for (int i=0; i<9; i++){
            System.out.println("| "+tab.getTabuleiro()[i][0].getValorFixo()+" "+tab.getTabuleiro()[i][1].getValorFixo()+" "+tab.getTabuleiro()[i][2].getValorFixo()+" | "
                                +tab.getTabuleiro()[i][3].getValorFixo()+" "+tab.getTabuleiro()[i][4].getValorFixo()+" "+tab.getTabuleiro()[i][5].getValorFixo()+" | "
                                +tab.getTabuleiro()[i][6].getValorFixo()+" "+tab.getTabuleiro()[i][7].getValorFixo()+" "+tab.getTabuleiro()[i][8].getValorFixo()+" |");
            if (i==2 || i==5){
            System.out.println("+-------+-------+-------+");
            }
        }
            System.out.println("+-------+-------+-------+");
    }
    
    public static void mostraPossiveis(Tabuleiro tab){
        for (int i=0; i<9; i++){
            for (int j=0; j<9; j++){
                if (tab.getTabuleiro()[i][j].getValorFixo() == 0){
                    System.out.println("Posicao["+i+"]["+j+"] --> "+tab.getTabuleiro()[i][j].getListaPossiveis());
                }
            }
        }
    }

    public Tabuleiro getPai() {
        return pai;
    }

    public void setPai(Tabuleiro pai) {
        this.pai = pai;
    }

    public Celula[][] getTabuleiro() {
        return tabuleiro;
    }

    public void setTabuleiro(Celula[][] tabuleiro) {
        this.tabuleiro = tabuleiro;
    }

    public int getnZeros() {
        return nZeros;
    }

    public void setnZeros(int nZeros) {
        this.nZeros = nZeros;
    }
    
    
}
