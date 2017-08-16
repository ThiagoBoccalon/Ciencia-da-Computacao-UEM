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
public class Idade {
    private Double jovem;
    private Double adulto;
    private Double idoso;
    private Double somaValoresJovem;
    private Double somaValoresAdulto;
    private Double somaValoresIdoso;

    public Double getJovem() {
        return jovem;
    }

    public Double getAdulto() {
        return adulto;
    }

    public Double getIdoso() {
        return idoso;
    }
    
    public void funcaoPertinenciaJovem(Double valor){
        jovem = FuncoesPertinencia.Triangular(valor, 18.0, 18.0, 30.0);
    }
    
    public void funcaoPertinenciaAdulto(Double valor){
        adulto = FuncoesPertinencia.Triangular(valor, 25.0, 40.0, 55.0);
    }
    
    public void funcaoPertinenciaIdoso(Double valor){
        idoso = FuncoesPertinencia.Triangular(valor, 50.0, 200.0, 200.0);
    }
    
}
