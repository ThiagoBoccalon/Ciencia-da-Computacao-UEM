/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package moa2014;

import com.google.common.collect.Multimap;
import java.io.Console;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Scanner;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.*;
import java.util.TreeMap;
import java.util.TreeSet;

import com.google.common.collect.TreeMultimap;
import java.util.HashMap;

/**
 *
 * @author Gustavo
 */
public class MOAH22014 {
    
    public static String transformaMatrizString(int[][] matriz){

    int a;
    int b;
    String matrizstring = "";
    for(a=0; a<4; a++){
        for(b=0; b<4;b++){
            int elemento = matriz[a][b];
            matrizstring += String.valueOf(elemento);
            matrizstring += " ";
        }
    }
    return matrizstring;
}

    public static int diferencaMatriz(int[][] matriz){
        int[][] original = {{1, 5, 9, 13},{2, 6, 10, 14},{3, 7, 11, 15},{4, 8, 12, 0}};
        int dif = 0;
        int a;
        int b;
        for (a=0; a<4; a++){
            for(b=0; b<4; b++){
                if (matriz[a][b] == 0){
                    continue;
                }
                if (a<3){
                    int valor1 = matriz[a][b];
                    int valor2 = matriz[a+1][b];

                    if (valor1 == 15){
                        if (valor2!=0){
                            dif++;
                        }
                    }
                    else if (valor1 + 1 != valor2){
                        dif++;
                    }
                }
                else{
                     if (b<3){

                        int valor1 = matriz[a][b];
                        int valor2 = matriz[0][b+1];

                        if (valor1 == 15){
                            if (valor2!=0){
                                dif++;
                            }
                        }
                        else if (valor1 + 1 != valor2){
                            dif++;
                        }
                    }
                }
            }
        }
        return dif;

    }
    
    public static int[] localizazero(int[][] matriz){
        int[] retorno = {0, 0};
        for (int x=0; x < 4; x++){
            for (int y=0; y < 4; y++){
                if (matriz[x][y] == 0){
                    retorno[0] = x;
                    retorno[1] = y;
                }
            }
        }
        return retorno;
    }
    
    public static int[][] copyarray(int[][] matriz){
        int[][] matriznova = {{0, 0, 0, 0},{0, 0, 0, 0},{0, 0, 0, 0},{0, 0, 0, 0}};
        for(int a=0; a<4;a++){
            for(int b = 0; b<4; b++){
                matriznova[a][b] = matriz[a][b];
            }
        }
        return matriznova;
    }
    
    public static int principal(int[][] matrizatual){
        long startTime = System.currentTimeMillis();
        Multimap<Integer, String> open_list = TreeMultimap.create(); 
        HashMap<String, Estado> processados = new HashMap();

        int difmatrizatual = diferencaMatriz(matrizatual);

        String stringmatriz = transformaMatrizString(matrizatual);
        open_list.put(difmatrizatual, stringmatriz);
        Estado estadoatual = new Estado(matrizatual, 0);
        processados.put(stringmatriz, estadoatual);


        int arvoresgeradas = 0;
        int arvoresprocessadas = 0;

        while(!open_list.isEmpty()){
            Iterator iterator = open_list.keySet().iterator();


            Integer key = (Integer) iterator.next();
            String matrizatualx1 = open_list.asMap().get(key).iterator().next();
            Estado estadomenor = processados.get(matrizatualx1);
            int altura = estadomenor.getCusto();
            //LOCALIZA O ZERO
            int[] zerot = localizazero(estadomenor.getMatriz());
            int x = zerot[0];
            int y = zerot[1];
            int x0 = x-1;
            int x1 = x+1;
            int y0 = y-1;
            int y1 = y+1;
            int difmatrizatualx = diferencaMatriz(estadomenor.getMatriz());
            if (difmatrizatualx== 0){
                long endTime = System.currentTimeMillis();
                System.out.println("---------------------------------------");
                System.out.println("Arvores Geradas: " + arvoresgeradas);
                System.out.println("Arvores Processadas: " + arvoresprocessadas);
                System.out.println("Quantidade de Movimentos: " + estadomenor.getCusto());
                System.out.println("Tempo de processamento " + (endTime - startTime) + " ms");
                System.out.println("---------------------------------------\n\n");
                return 0;
            }
            arvoresprocessadas++;
            int[][] matrizatualx = estadomenor.getMatriz();
            if(x0>=0){

                int[][] matriz;
                matriz = copyarray(matrizatualx);
                matriz[x][y] = matrizatualx[x0][y];
                matriz[x0][y] = matrizatualx[x][y];

                String stringmatriz1 = transformaMatrizString(matriz);
                if (!(processados.containsKey(stringmatriz1))){
                        arvoresgeradas++;
                        int diferencamatriz = diferencaMatriz(matriz);
                        int custototal = diferencamatriz + altura + 1;

                        Estado estadonovo = new Estado(matriz, altura+1);
                        open_list.put(custototal, stringmatriz1);


                        processados.put(stringmatriz1, estadonovo);

                }
            }
            if(x1<=3){
                int[][] matriz;
                matriz = copyarray(matrizatualx);
                matriz[x][y] = matrizatualx[x1][y];
                matriz[x1][y] = matrizatualx[x][y];
                String stringmatriz2 = transformaMatrizString(matriz);

                if (!(processados.containsKey(stringmatriz2))){
                        arvoresgeradas++;
                        int diferencamatriz = diferencaMatriz(matriz);
                        int custototal = diferencamatriz + altura + 1;

                        Estado estadonovo = new Estado(matriz, altura+1);
                        open_list.put(custototal, stringmatriz2);


                        processados.put(stringmatriz2, estadonovo);

                }
            }
            if(y0>=0){
                int[][] matriz;
                matriz = copyarray(matrizatualx);
                matriz[x][y] = matrizatualx[x][y0];
                matriz[x][y0] = matrizatualx[x][y];
                String stringmatriz3 = transformaMatrizString(matriz);

                if (!(processados.containsKey(stringmatriz3))){
                        arvoresgeradas++;
                        int diferencamatriz = diferencaMatriz(matriz);
                        int custototal = diferencamatriz + altura + 1;

                        Estado estadonovo = new Estado(matriz, altura+1);
                        open_list.put(custototal, stringmatriz3);

                        processados.put(stringmatriz3, estadonovo);

                }
            }
            if(y1<=3){
                int[][] matriz;
                matriz = copyarray(matrizatualx);
                matriz[x][y] = matrizatualx[x][y1];
                matriz[x][y1] = matrizatualx[x][y];

                int custoateaqui = diferencaMatriz(matriz) + altura + 1;
                String stringmatriz4 = transformaMatrizString(matriz);

                if (!(processados.containsKey(stringmatriz4))){
                        arvoresgeradas++;
                        int diferencamatriz = diferencaMatriz(matriz);
                        int custototal = diferencamatriz + altura + 1;

                        Estado estadonovo = new Estado(matriz, altura+1);
                        open_list.put(custototal, stringmatriz4);

                        processados.put(stringmatriz4, estadonovo);

                }
            }
            open_list.remove(key, matrizatualx1);
        }
        return 0;

}
    
    
    
    
}