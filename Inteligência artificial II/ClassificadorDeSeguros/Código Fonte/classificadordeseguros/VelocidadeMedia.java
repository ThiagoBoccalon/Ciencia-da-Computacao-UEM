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
public class VelocidadeMedia {
    private Double lento;
    private Double normal;
    private Double rapido;

    public Double getLento() {
        return lento;
    }

    public Double getNormal() {
        return normal;
    }

    public Double getRapido() {
        return rapido;
    }
    
    public void funcaoPertinenciaLento(Double valor){
        lento = FuncoesPertinencia.Triangular(valor, 0.0, 0.0, 50.0);
    }
    
    public void funcaoPertinenciaNormal(Double valor){
        normal = FuncoesPertinencia.Triangular(valor, 45.0, 57.5, 70.0);
    }
    
    public void funcaoPertinenciaRapido(Double valor){
        rapido = FuncoesPertinencia.Triangular(valor, 65.0, 300.0, 300.0);
    }
    
}
