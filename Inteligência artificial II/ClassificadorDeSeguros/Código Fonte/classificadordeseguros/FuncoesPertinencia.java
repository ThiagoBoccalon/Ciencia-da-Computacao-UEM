/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classificadordeseguros;

/**
 *
 * @author Suelen
 */
public class FuncoesPertinencia {
    
    public static Double Triangular(Double x, Double a, Double b, Double c){
        if (Double.compare(a, b) == 0){
            if(Double.compare(x, a) == 0){
                return 1.0;
            }else{
                return Math.max(Math.min((x-a), ((c-x)/(c-b))), 0);
            }
        }else{
            if (Double.compare(b, c) == 0){
                if(Double.compare(x, c) == 0){
                    return 1.0;
                }else{
                    return Math.max(Math.min(((x-a)/(b-a)), (c-x)), 0);
                }
            }else{
                return Math.max(Math.min(((x-a)/(b-a)), ((c-x)/(c-b))), 0);
            }
        }
    } 
    
    public static Double Trapezoidal(Double x, Double a, Double b, Double c, Double d){
        if(Double.compare(a, b) == 0){
            if(Double.compare(x, a) == 0){
                return 1.0;
            }else{
                if(Math.min((x-a), ((d-x)/(d-c))) == ((x-a))){
                    return Math.max(Math.min((x-a), 1), 0);
                }else{
                    return Math.max(Math.min(((d-x)/(d-c)), 1), 0);
                }
            }
        }else{
            if(Double.compare(d, c) == 0){
                if(Double.compare(x, d) == 0){
                    return 1.0;
                }else{
                    if(Math.min(((x-a)/(b-a)), (d-x)) == ((x-a)/(b-a))){
                        return Math.max(Math.min(((x-a)/(b-a)), 1), 0);
                    }else{
                        return Math.max(Math.min(((d-x)), 1), 0);
                    }
                }
            }else{
                if(Math.min(((x-a)/(b-a)), ((d-x)/(d-c))) == ((x-a)/(b-a))){
                    return Math.max(Math.min(((x-a)/(b-a)), 1), 0);
                }else{
                    return Math.max(Math.min(((d-x)/(d-c)), 1), 0);
                }
            }
        }
    }
}
