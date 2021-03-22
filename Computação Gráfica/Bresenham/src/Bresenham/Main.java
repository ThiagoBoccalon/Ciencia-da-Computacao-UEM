package Bresenham;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        
        Scanner leitor = new Scanner(System.in);    
        System.out.println ("Tamanho do eixo X:");          
        int eixoX=leitor.nextInt();
        System.out.println ("Tamanho do eixo Y:");          
        int eixoY=leitor.nextInt();
                
	
		Pixels[][] grid = new Pixels[eixoX][eixoY];
		for(int x=0; x<grid.length; x++) {
			for(int y=0; y<grid[0].length; y++) {
				grid[x][y] = new Pixels(x, y);
			}
		}
		
        int x0, y0, x1, y1;  
          
        System.out.println ("Insira x0:");          
        x0=leitor.nextInt();
        System.out.println ("Insira y0:");         
        y0=leitor.nextInt();
        System.out.println ("Insira x1:");          
        x1=leitor.nextInt();
        System.out.println ("Insira y1:");          
        y1=leitor.nextInt();            
                        
		List<Pixels> line = Bresenham.findLinha(grid, x0, y0, x1, y1);

		StringBuffer sb = new StringBuffer();
	
        sb.append("\n");		
       
        for(int y=0; y<grid[0].length; y++) {
			
			sb.append("|");
			for(int x=0; x<grid.length; x++) {
				if (x != 0) {
                    sb.append("|");
                }
				sb.append(line.contains(grid[x][y]) ? "X" : " ");
			}
			sb.append("|");
			sb.append("\n");
		}
				
		System.out.println(sb.toString());
	}
	
    }


