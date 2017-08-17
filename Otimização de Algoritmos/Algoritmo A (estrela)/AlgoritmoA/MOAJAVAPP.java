/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package moa2014;

import java.util.Scanner;
import moa2014.MOAH12014;
import moa2014.MOAH22014;
import moa2014.MOAH32014;
import moa2014.MOAH42014;
import moa2014.MOAH52014;

/**
 *
 * @author Guilherme
 */
public class MOAJAVAPP {
    
    public static void main(String argsx, double c1xx, double c2xx, double c3xx){
        int[][] caso1 = {{1, 5, 9, 13},
        {6, 3, 10, 14},
        {4, 11, 0, 15},
        {7, 2, 8, 12}};

        int[][] caso2 = {{1, 6, 0, 11},
        {2, 9, 13, 5},
        {3, 7, 14, 10},
        {4, 8, 12, 15}};

        int[][] caso3 = {{9, 8, 0, 14},
        {7, 6, 5, 1},
        {2, 4, 11, 10},
        {3, 12, 13, 15}};

        int[][] caso4 = {{1, 13, 7, 10},
        {2, 0, 12, 11},
        {3, 14, 6, 9},
        {8, 4, 5, 15}};

        int[][] caso5 = {{4, 7, 0, 13},
        {5, 9, 10, 14},
        {6, 11, 3, 1},
        {8, 2, 15, 12}};
        
        int[][][]casos = {caso1, caso2, caso3, caso4, caso5};
        
        Scanner in = new Scanner(System.in);

        if(argsx=="1"){
            long startTime = System.currentTimeMillis();
            for(int[][] caso : casos){
                MOAH12014.principal(caso);
            }
            long endTime = System.currentTimeMillis();
            System.out.println("\n\nTEMPO DE PROCESSAMENTO TOTAL " + (endTime - startTime) + " ms\n\n");
        }
        else if(argsx=="2"){
            long startTime = System.currentTimeMillis();
            for(int[][] caso : casos){
                MOAH22014.principal(caso);
            }
            long endTime = System.currentTimeMillis();
            System.out.println("\n\nTEMPO DE PROCESSAMENTO TOTAL " + (endTime - startTime) + " ms\n\n");
        }
        else if(argsx=="3"){
            long startTime = System.currentTimeMillis();
            for(int[][] caso : casos){
                MOAH32014.principal(caso);
            }
            long endTime = System.currentTimeMillis();
            System.out.println("\n\nTEMPO DE PROCESSAMENTO TOTAL " + (endTime - startTime) + " ms\n\n");
        }
        else if(argsx=="4"){
            
 
            long startTime = System.currentTimeMillis();
            for(int[][] caso : casos){
                MOAH42014.principal(caso,c1xx, c2xx, c3xx);
            }
            long endTime = System.currentTimeMillis();
            System.out.println("\n\nTEMPO DE PROCESSAMENTO TOTAL " + (endTime - startTime) + " ms\n\n");


        }
        else if(argsx=="5"){
            long startTime = System.currentTimeMillis();
            for(int[][] caso : casos){
                MOAH52014.principal(caso);
            }
            long endTime = System.currentTimeMillis();
            System.out.println("\n\nTEMPO DE PROCESSAMENTO TOTAL " + (endTime - startTime) + " ms\n\n");
        }
        System.out.println("\n\n\n\n");
    }
    
    public static void main(String argsx, double c1xx, double c2xx, double c3xx, int[][] custom){
       
        if(argsx=="1"){
            long startTime = System.currentTimeMillis();

            MOAH12014.principal(custom);
            
            long endTime = System.currentTimeMillis();
            System.out.println("\n\nTEMPO DE PROCESSAMENTO TOTAL " + (endTime - startTime) + " ms\n\n");
        }
        else if(argsx=="2"){
            long startTime = System.currentTimeMillis();

            MOAH22014.principal(custom);
            
            long endTime = System.currentTimeMillis();
            System.out.println("\n\nTEMPO DE PROCESSAMENTO TOTAL " + (endTime - startTime) + " ms\n\n");
        }
        else if(argsx=="3"){
            long startTime = System.currentTimeMillis();

            MOAH32014.principal(custom);
            
            long endTime = System.currentTimeMillis();
            System.out.println("\n\nTEMPO DE PROCESSAMENTO TOTAL " + (endTime - startTime) + " ms\n\n");
        }
        else if(argsx=="4"){
            
 
            long startTime = System.currentTimeMillis();

            MOAH42014.principal(custom,c1xx, c2xx, c3xx);
            
            long endTime = System.currentTimeMillis();
            System.out.println("\n\nTEMPO DE PROCESSAMENTO TOTAL " + (endTime - startTime) + " ms\n\n");


        }
        else if(argsx=="5"){
            long startTime = System.currentTimeMillis();

            MOAH52014.principal(custom);
            
            long endTime = System.currentTimeMillis();
            System.out.println("\n\nTEMPO DE PROCESSAMENTO TOTAL " + (endTime - startTime) + " ms\n\n");
        }
        System.out.println("\n\n\n\n");
    }
        
    }
        

