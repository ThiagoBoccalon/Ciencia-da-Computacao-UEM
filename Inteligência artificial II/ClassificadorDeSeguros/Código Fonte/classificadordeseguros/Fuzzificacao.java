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
public class Fuzzificacao { 
    private Double idade;
    private Double velocidadeMedia;
    private Double qntdAcidentes;
    private Double experiencia;

    public Fuzzificacao(Double idade, Double velocidadeMedia, Double qntdAcidentes, Double experiencia) {
        this.idade = idade;
        this.velocidadeMedia = velocidadeMedia;
        this.qntdAcidentes = qntdAcidentes;
        this.experiencia = experiencia;
    }
          
    public Idade funcaoPertinenciaIdade(){
        Idade funcaoIdade = new Idade();
        funcaoIdade.funcaoPertinenciaJovem(idade);
        funcaoIdade.funcaoPertinenciaAdulto(idade);
        funcaoIdade.funcaoPertinenciaIdoso(idade);
        return funcaoIdade;
    }
    
    public VelocidadeMedia funcaoPertinenciaVelocidade(){
        VelocidadeMedia funcaoVelocidade = new VelocidadeMedia();
        funcaoVelocidade.funcaoPertinenciaLento(velocidadeMedia);
        funcaoVelocidade.funcaoPertinenciaNormal(velocidadeMedia);
        funcaoVelocidade.funcaoPertinenciaRapido(velocidadeMedia);
        return funcaoVelocidade;
    }
    
    public Acidente funcaoPertinenciaAcidentes(){  
        Acidente funcaoAcidente = new Acidente();
        funcaoAcidente.funcaoPertinenciaPoucos(qntdAcidentes);
        funcaoAcidente.funcaoPertinenciaMedio(qntdAcidentes);
        funcaoAcidente.funcaoPertinenciaMuitos(qntdAcidentes);
        return funcaoAcidente;
    }
    
    public Experiencia funcaoPertinenciaExperiencia(){    
        Experiencia funcaoExperiencia = new Experiencia();
        funcaoExperiencia.funcaoPertinenciaInexperiente(experiencia);
        funcaoExperiencia.funcaoPertinenciaExperienciaMedia(experiencia);
        funcaoExperiencia.funcaoPertinenciaExperiente(experiencia);
        return funcaoExperiencia;
    }
    
    public Risco funcaoPertinenciaRisco(Double valor){
        Risco funcaoRisco = new Risco();
        funcaoRisco.funcaoPertinenciaBaixo(valor);
        funcaoRisco.funcaoPertinenciaMedio(valor);
        funcaoRisco.funcaoPertinenciaAlto(valor);
        return funcaoRisco;
    }
    
}