/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classificadordeseguros;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Suelen
 */
public class Risco {
    private Double baixo = null;
    private Double medio = null;
    private Double alto = null;

    public Double getBaixo() {
        return baixo;
    }

    public Double getMedio() {
        return medio;
    }

    public Double getAlto() {
        return alto;
    }
    
    public void funcaoPertinenciaBaixo(Double valor){
        baixo = FuncoesPertinencia.Trapezoidal(valor, 0.0, 0.0, 28.0, 38.0);
    }
    
    public void funcaoPertinenciaMedio(Double valor){
        medio = FuncoesPertinencia.Trapezoidal(valor, 28.0, 38.0, 61.0, 71.0);
    }
    
    public void funcaoPertinenciaAlto(Double valor){
        alto = FuncoesPertinencia.Trapezoidal(valor, 61.0, 71.0, 100.0, 100.0);
    }

    public void setBaixo(Double baixo) {
        if(this.baixo == null){
            this.baixo = baixo;
        }else{
            if(baixo < this.baixo){
                this.baixo = baixo;
            }
        }
    }

    public void setMedio(Double medio) {
        if(this.medio == null){
            this.medio = medio;
        }else{
            if(medio < this.medio){
                this.medio = medio;
            }
        }
    }

    public void setAlto(Double alto) {
        if(this.alto == null){
            this.alto = alto;
        }else{
            if(alto < this.alto){
                this.alto = alto;
            }
        }
    }
    
    
}
