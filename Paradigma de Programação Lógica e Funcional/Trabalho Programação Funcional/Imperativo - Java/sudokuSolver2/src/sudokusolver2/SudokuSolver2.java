/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sudokusolver2;

import java.util.Scanner;

/**
 *
 * @author shaolin
 */
public class SudokuSolver2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Tabuleiro tab = new Tabuleiro();
        String entrada;
        long tInicio, tFim;
        
        Scanner ler = new Scanner(System.in);
        System.out.println("Nome do arquivo de entrada: ");
        entrada = ler.nextLine();
        
        tab = Tabuleiro.importTabuleiro(entrada);
        
        System.out.println("======== ENTRADA ========");
        Tabuleiro.mostraTabuleiro(tab);        
        tInicio = System.currentTimeMillis();
        Algoritmos.soluciona(tab);
        tFim = System.currentTimeMillis();
        tFim = tFim - tInicio;
        System.out.println("Tempo de execução: "+tFim+"ms");
        
//        tab = Tabuleiro.importTabuleiro("easy1.txt");
//        System.out.println("ORIGINAL");
//        tab.mostraTabuleiro(tab);
//        System.out.println("=====================================");
//        Algoritmos.soluciona(tab);
    }
    
}
