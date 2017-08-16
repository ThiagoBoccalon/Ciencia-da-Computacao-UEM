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
public class Acidente {
    private Double poucos;
    private Double medio;
    private Double muitos;

    public Double getPoucos() {
        return poucos;
    }

    public Double getMedio() {
        return medio;
    }

    public Double getMuitos() {
        return muitos;
    }
    
    public void funcaoPertinenciaPoucos(Double valor){
        poucos = FuncoesPertinencia.Triangular(valor, 0.0, 0.0, 5.0);
    }
    
    public void funcaoPertinenciaMedio(Double valor){
        medio = FuncoesPertinencia.Triangular(valor, 3.0, 6.5, 10.0);
    }
    
    public void funcaoPertinenciaMuitos(Double valor){
        muitos = FuncoesPertinencia.Triangular(valor, 8.0, 100.0, 100.0);
    }
}
