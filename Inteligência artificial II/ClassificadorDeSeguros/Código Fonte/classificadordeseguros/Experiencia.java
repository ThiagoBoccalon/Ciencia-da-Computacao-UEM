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
public class Experiencia {
    private Double inexperiente;
    private Double experienciaMedia;
    private Double experiente;

    public Double getInexperiente() {
        return inexperiente;
    }

    public Double getExperienciaMedia() {
        return experienciaMedia;
    }

    public Double getExperiente() {
        return experiente;
    }
            
    public void funcaoPertinenciaInexperiente(Double valor){
        inexperiente = FuncoesPertinencia.Triangular(valor, 0.0, 0.0, 5.0);
    }
    
    public void funcaoPertinenciaExperienciaMedia(Double valor){
        experienciaMedia = FuncoesPertinencia.Triangular(valor, 4.0, 9.5, 15.0);
    }
    
    public void funcaoPertinenciaExperiente(Double valor){
        experiente = FuncoesPertinencia.Triangular(valor, 10.0, 200.0, 200.0);
    }            
    
}
