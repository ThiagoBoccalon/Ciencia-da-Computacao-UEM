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
public class AvaliacaoRegras {
    private Idade idade;
    private VelocidadeMedia velocidade;
    private Acidente acidente;
    private Experiencia experiencia;
    private Double defuzzificacao;

    public AvaliacaoRegras(Idade idadeParam, VelocidadeMedia velocidadeParam, Acidente acidenteParam, Experiencia experienciaParam) {
        this.idade = idadeParam;
        this.velocidade = velocidadeParam;
        this.acidente = acidenteParam;
        this.experiencia = experienciaParam;
    }
  
    public Double Regras(){
        Risco risco = new Risco();
        Defuzzificacao defuzzificacao = new Defuzzificacao();
        
       //Jovem Lento Poucos Inexp
        if((idade.getJovem() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getPoucos() > 0.0) && (experiencia.getInexperiente() > 0.0)){
            risco.setBaixo(media(velocidade.getLento(), acidente.getPoucos()));
            risco.setAlto(media(idade.getJovem(), experiencia.getInexperiente()));              
        }
        //Jovem Lento Poucos ExpMed
        if((idade.getJovem() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getPoucos() > 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(media(velocidade.getLento(), acidente.getPoucos()));
            risco.setMedio(experiencia.getExperienciaMedia());
            risco.setAlto(idade.getJovem());            
        }
        //Jovem Lento Poucos Exp
        if((idade.getJovem() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getPoucos() > 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(media(velocidade.getLento(), acidente.getPoucos()),experiencia.getExperiente()));
            risco.setAlto(idade.getJovem());              
        }
        //Jovem Lento Medio Inexp
        if((idade.getJovem() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getInexperiente() > 0.0)){
            risco.setBaixo(velocidade.getLento());
            risco.setMedio(acidente.getMedio());
            risco.setAlto(media(idade.getJovem(),experiencia.getInexperiente()));         
        }
        //Jovem Lento Medio ExpMed
        if((idade.getJovem() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(velocidade.getLento());
            risco.setMedio(media(acidente.getMedio(),experiencia.getExperienciaMedia()));
            risco.setAlto(idade.getJovem());          
        }
        //Jovem Lento Medio Exp
        if((idade.getJovem() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMedio() > 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getLento(), experiencia.getExperiente()));
            risco.setMedio(acidente.getMedio());
            risco.setAlto(idade.getJovem());          
        }
        //Jovem Lento Muitos Inexp
        if((idade.getJovem() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getInexperiente() > 0.0)){
            risco.setBaixo(velocidade.getLento());
            risco.setAlto(media(media(idade.getJovem(), acidente.getMuitos()), experiencia.getInexperiente()));
        }
        //Jovem Lento Muitos ExpMed
        if((idade.getJovem() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(velocidade.getLento());
            risco.setMedio(experiencia.getExperienciaMedia());
            risco.setAlto(media(idade.getJovem(), acidente.getMuitos()));
        }
        //Jovem Lento Muitos Exp
        if((idade.getJovem() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getLento(), experiencia.getExperiente()));
            risco.setAlto(media(idade.getJovem(), acidente.getMuitos()));
        }
        //Jovem Normal Poucos Inexp
        if((idade.getJovem() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getNormal(), acidente.getPoucos()));
            risco.setAlto(media(idade.getJovem(), experiencia.getInexperiente()));
        }
        //Jovem Normal Poucos ExpMed
        if((idade.getJovem() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(media(velocidade.getNormal(), acidente.getPoucos()));
            risco.setMedio(experiencia.getExperienciaMedia());
            risco.setAlto(idade.getJovem());
        }
        //Jovem Normal Poucos Exp
        if((idade.getJovem() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(media(velocidade.getNormal(), acidente.getPoucos()), experiencia.getExperiente()));
            risco.setAlto(idade.getJovem());
        }
        //Jovem Normal Medio Inexp
        if((idade.getJovem() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(velocidade.getNormal());
            risco.setMedio(acidente.getMedio());
            risco.setAlto(media(idade.getJovem(), experiencia.getInexperiente()));
        }
        //Jovem Normal Medio ExpMedia
        if((idade.getJovem() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(velocidade.getNormal());
            risco.setMedio(media(acidente.getMedio(), experiencia.getExperienciaMedia()));
            risco.setAlto(idade.getJovem());
        }
        //Jovem Normal Medio Exp
        if((idade.getJovem() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getNormal(), experiencia.getExperiente()));
            risco.setMedio(acidente.getMedio());
            risco.setAlto(idade.getJovem());
        }
        //Jovem Normal Muitos Inexp
        if((idade.getJovem() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(velocidade.getNormal());
            risco.setAlto(media(media(idade.getJovem(), acidente.getMuitos()), experiencia.getInexperiente()));
        }
        //Jovem Normal Muitos ExpMedia
        if((idade.getJovem() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(velocidade.getNormal());
            risco.setMedio(experiencia.getExperienciaMedia());
            risco.setAlto(media(idade.getJovem(), acidente.getMuitos()));
        }
        //Jovem Normal Muitos Exp
        if((idade.getJovem() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getNormal(), experiencia.getExperiente()));
            risco.setAlto(media(idade.getJovem(), acidente.getMuitos()));
        }
        //Jovem Rapido Poucos Inexp
        if((idade.getJovem() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(acidente.getPoucos());
            risco.setAlto(media(media(idade.getJovem(), velocidade.getRapido()), experiencia.getInexperiente()));
        }
        //Jovem Rapido Poucos ExpMed
        if((idade.getJovem() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(acidente.getPoucos());
            risco.setMedio(experiencia.getExperienciaMedia());
            risco.setAlto(media(idade.getJovem(), velocidade.getRapido()));
        }
        //Jovem Rapido Poucos Exp
        if((idade.getJovem() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(acidente.getPoucos(), experiencia.getExperiente()));
            risco.setAlto(media(idade.getJovem(), velocidade.getRapido()));
        }
        //Jovem Rapido Medio Inexp
        if((idade.getJovem() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setMedio(acidente.getMedio());
            risco.setAlto(media(media(idade.getJovem(), velocidade.getRapido()), experiencia.getInexperiente()));
        }
        //Jovem Rapido Medio ExpMed
        if((idade.getJovem() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setMedio(media(acidente.getMedio(), experiencia.getExperienciaMedia()));
            risco.setAlto(media(idade.getJovem(), velocidade.getRapido()));
        }
        //Jovem Rapido Medio Exp
        if((idade.getJovem() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(experiencia.getExperiente());
            risco.setMedio(acidente.getMedio());
            risco.setAlto(media(idade.getJovem(), velocidade.getRapido()));
        }
        //Adulto Lento Poucos Inexp
        if((idade.getAdulto() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getLento(), acidente.getPoucos()));
            risco.setMedio(idade.getAdulto());
            risco.setAlto(experiencia.getExperiente());
        }
        //Adulto Lento Poucos ExpMed
        if((idade.getAdulto() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(media(velocidade.getLento(), acidente.getPoucos()));
            risco.setMedio(media(idade.getAdulto(), experiencia.getExperienciaMedia()));
        }
        //Adulto Lento Poucos Exp
        if((idade.getAdulto() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(media(velocidade.getLento(), acidente.getPoucos()),experiencia.getExperiente()));
            risco.setMedio(idade.getAdulto());
        }
        //Adulto Lento Medio Inexp
        if((idade.getAdulto() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(velocidade.getLento());
            risco.setMedio(media(idade.getAdulto(), acidente.getMedio()));
            risco.setAlto(experiencia.getInexperiente());
        }
        //Adulto Lento Medio ExpMed
        if((idade.getAdulto() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(velocidade.getLento());
            risco.setMedio(media(media(idade.getAdulto(), acidente.getMedio()),experiencia.getExperienciaMedia()));
        }
        //Adulto Lento Medio Exp
        if((idade.getAdulto() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getLento(), experiencia.getExperiente()));
            risco.setMedio(media(idade.getAdulto(), acidente.getMedio()));
        }
        //Adulto Lento Muitos Inexp
        if((idade.getAdulto() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(velocidade.getLento());
            risco.setMedio(idade.getAdulto());
            risco.setAlto(media(acidente.getMuitos(), experiencia.getInexperiente()));
        }
        //Adulto Lento Muitos ExpMed
        if((idade.getAdulto() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(velocidade.getLento());
            risco.setMedio(media(idade.getAdulto(), experiencia.getExperienciaMedia()));
            risco.setAlto(acidente.getMuitos());
        }
        //Adulto Lento Muitos Exp
        if((idade.getAdulto() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getLento(), experiencia.getExperiente()));
            risco.setMedio(idade.getAdulto());
            risco.setAlto(acidente.getMuitos());
        }
        //Adulto Normal Poucos Inexp
        if((idade.getAdulto() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getNormal(), acidente.getPoucos()));
            risco.setMedio(idade.getAdulto());
            risco.setAlto(experiencia.getInexperiente());
        }
        //Adulto Normal Poucos ExpMed
        if((idade.getAdulto() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(media(velocidade.getNormal(), acidente.getPoucos()));
            risco.setMedio(media(idade.getAdulto(),experiencia.getExperienciaMedia()));
        }
        //Adulto Normal Poucos Exp
        if((idade.getAdulto() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(media(velocidade.getNormal(), acidente.getPoucos()),experiencia.getExperiente()));
            risco.setMedio(idade.getAdulto());
        }
        //Adulto Normal Medio Inexp
        if((idade.getAdulto() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(velocidade.getNormal());
            risco.setMedio(media(idade.getAdulto(), acidente.getMedio()));
            risco.setAlto(experiencia.getInexperiente());
        }
        //Adulto Normal Medio ExpMed
        if((idade.getAdulto() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(velocidade.getNormal());
            risco.setMedio(media(media(idade.getAdulto(), acidente.getMedio()), experiencia.getExperienciaMedia()));
        }
        //Adulto Normal Medio Exp
        if((idade.getAdulto() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getNormal(), experiencia.getExperiente()));
            risco.setMedio(media(idade.getAdulto(), acidente.getMedio()));
        }
        //Adulto Normal Muitos Inexp
        if((idade.getAdulto() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(velocidade.getNormal());
            risco.setMedio(idade.getAdulto());
            risco.setAlto(media(acidente.getMuitos(), experiencia.getInexperiente()));
        }
        //Adulto Normal Muitos ExpMed
        if((idade.getAdulto() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(velocidade.getNormal());
            risco.setMedio(media(idade.getAdulto(), experiencia.getExperienciaMedia()));
            risco.setAlto(acidente.getMuitos());
        }
        //Adulto Normal Muitos Exp
        if((idade.getAdulto() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getNormal(), experiencia.getExperiente()));
            risco.setMedio(idade.getAdulto());
            risco.setAlto(acidente.getMuitos());
        }
        //Adulto Rapido Poucos Inexp
        if((idade.getAdulto() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(acidente.getPoucos());
            risco.setMedio(idade.getAdulto());
            risco.setAlto(media(velocidade.getRapido(), experiencia.getInexperiente()));
        }
        //Adulto Rapido Poucos ExpMed
        if((idade.getAdulto() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(acidente.getPoucos());
            risco.setMedio(media(idade.getAdulto(), experiencia.getExperienciaMedia()));
            risco.setAlto(velocidade.getRapido());
        }
        //Adulto Rapido Poucos Exp
        if((idade.getAdulto() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(acidente.getPoucos(), experiencia.getExperiente()));
            risco.setMedio(idade.getAdulto());
            risco.setAlto(velocidade.getRapido());
        }
        //Adulto Rapido Medio Inexp
        if((idade.getAdulto() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setMedio(media(idade.getAdulto(), acidente.getMedio()));
            risco.setAlto(media(velocidade.getRapido(), experiencia.getInexperiente()));
        }
        //Adulto Rapido Medio ExpMed
        if((idade.getAdulto() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setMedio(media(media(idade.getAdulto(), acidente.getMedio()), experiencia.getExperienciaMedia()));
            risco.setAlto(velocidade.getRapido());
        }
        //Adulto Rapido Medio Exp
        if((idade.getAdulto() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(experiencia.getExperiente());
            risco.setMedio(media(idade.getAdulto(), acidente.getMedio()));
            risco.setAlto(velocidade.getRapido());
        }
        //Adulto Rapido Muitos Inexp
        if((idade.getAdulto() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setMedio(idade.getAdulto());
            risco.setAlto(media(media(velocidade.getRapido(), acidente.getMuitos()), experiencia.getInexperiente()));
        }
        //Adulto Rapido Muitos ExpMed
        if((idade.getAdulto() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setMedio(media(idade.getAdulto(), experiencia.getExperienciaMedia()));
            risco.setAlto(media(velocidade.getRapido(), acidente.getMuitos()));
        }
        //Adulto Rapido Muitos Exp
        if((idade.getAdulto() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(experiencia.getExperiente());
            risco.setMedio(idade.getAdulto());
            risco.setAlto(media(velocidade.getRapido(), acidente.getMuitos()));
        }
        //Idoso Lento Poucos Inexp
        if((idade.getIdoso() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(media(acidente.getPoucos(), velocidade.getLento()));
            risco.setAlto(media(idade.getIdoso(), experiencia.getInexperiente()));
        }
        //Idoso Lento Poucos ExpMed
        if((idade.getIdoso() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(media(acidente.getPoucos(), velocidade.getLento()));
            risco.setMedio(experiencia.getExperienciaMedia());
            risco.setAlto(idade.getIdoso());
        }
        //Idoso Lento Poucos Exp
        if((idade.getIdoso() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(media(acidente.getPoucos(), velocidade.getLento()), experiencia.getExperiente()));
            risco.setAlto(idade.getIdoso());
        }
        //Idoso Lento Medio Inexp
        if((idade.getIdoso() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(velocidade.getLento());
            risco.setMedio(acidente.getMedio());
            risco.setAlto(media(idade.getIdoso(), experiencia.getInexperiente()));
        }
        //Idoso Lento Medio ExpMed
        if((idade.getIdoso() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(velocidade.getLento());
            risco.setMedio(media(acidente.getMedio(), experiencia.getExperienciaMedia()));
            risco.setAlto(idade.getIdoso());
        }
        //Idoso Lento Medio Exp
        if((idade.getIdoso() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getLento(), experiencia.getExperiente()));
            risco.setMedio(acidente.getMedio());
            risco.setAlto(idade.getIdoso());
        }
        //Idoso Lento Muitos Inexp
        if((idade.getIdoso() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(velocidade.getLento());
            risco.setAlto(media(media(idade.getIdoso(), acidente.getMuitos()), experiencia.getInexperiente()));
        }
        //Idoso Lento Muitos ExpMed
        if((idade.getIdoso() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(velocidade.getLento());
            risco.setMedio(experiencia.getExperienciaMedia());
            risco.setAlto((media(idade.getIdoso(), acidente.getMuitos())));
        }
        //Idoso Lento Muitos Exp
        if((idade.getIdoso() > 0.0) && (velocidade.getLento() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getLento(), experiencia.getExperiente()));
            risco.setAlto(media(idade.getIdoso(), acidente.getMuitos()));
        }
        //Idoso Normal Poucos Inexp
        if((idade.getIdoso() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getNormal(), acidente.getPoucos()));
            risco.setAlto(media(idade.getIdoso(), experiencia.getInexperiente()));
        }
        //Idoso Normal Poucos ExpMed
        if((idade.getIdoso() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(media(velocidade.getNormal(), acidente.getPoucos()));
            risco.setMedio(experiencia.getExperienciaMedia());
            risco.setAlto(idade.getIdoso());
        }
        //Idoso Normal Poucos Exp
        if((idade.getIdoso() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(media(velocidade.getNormal(), acidente.getPoucos()), experiencia.getExperiente()));
            risco.setAlto(idade.getIdoso());
        }
        //Idoso Normal Medio Inexp
        if((idade.getIdoso() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(velocidade.getNormal());
            risco.setMedio(acidente.getMedio());
            risco.setAlto(media(idade.getIdoso(), experiencia.getInexperiente()));
        }
        //Idoso Normal Medio ExpMed
        if((idade.getIdoso() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(velocidade.getNormal());
            risco.setMedio(media(acidente.getMedio(), experiencia.getExperienciaMedia()));
            risco.setAlto(idade.getIdoso());
        }
        //Idoso Normal Medio Exp
        if((idade.getIdoso() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getNormal(), experiencia.getExperiente()));
            risco.setMedio(acidente.getMedio());
            risco.setAlto(idade.getIdoso());
        }
        //Idoso Normal Muitos Inexp
        if((idade.getIdoso() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(velocidade.getNormal());
            risco.setAlto(media(media(idade.getIdoso(), acidente.getMuitos()), experiencia.getInexperiente()));
        }
        //Idoso Normal Muitos ExpMed
        if((idade.getIdoso() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(velocidade.getNormal());
            risco.setMedio(experiencia.getExperienciaMedia());
            risco.setAlto(media(idade.getIdoso(), acidente.getMuitos()));
        }
        //Idoso Normal Muitos Exp
        if((idade.getIdoso() > 0.0) && (velocidade.getNormal() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(velocidade.getNormal(), experiencia.getExperiente()));
            risco.setAlto(media(idade.getIdoso(), acidente.getMuitos()));
        }
        //Idoso Rapido Poucos Inexp
        if((idade.getIdoso() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setBaixo(acidente.getPoucos());
            risco.setAlto(media(media(idade.getIdoso(), velocidade.getRapido()), experiencia.getInexperiente()));
        }
        //Idoso Rapido Poucos ExpMed
        if((idade.getIdoso() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setBaixo(acidente.getPoucos());
            risco.setMedio(experiencia.getExperienciaMedia());
            risco.setAlto(media(idade.getIdoso(), velocidade.getRapido()));
        }
        //Idoso Rapido Poucos Exp
        if((idade.getIdoso() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getPoucos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(media(acidente.getPoucos(), experiencia.getExperiente()));
            risco.setAlto(media(idade.getIdoso(), velocidade.getRapido()));
        }
        //Idoso Rapido Medio Inexp
        if((idade.getIdoso() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setMedio(acidente.getMedio());
            risco.setAlto(media(media(idade.getIdoso(), velocidade.getRapido()), experiencia.getInexperiente()));
        }
        //Idoso Rapido Medio ExpMed
        if((idade.getIdoso() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setMedio(media(acidente.getMedio(), experiencia.getExperienciaMedia()));
            risco.setAlto(media(idade.getIdoso(), velocidade.getRapido()));
        }
        //Idoso Rapido Medio Exp
        if((idade.getIdoso() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMedio()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(experiencia.getExperiente());
            risco.setMedio(acidente.getMedio());
            risco.setAlto(media(idade.getIdoso(), velocidade.getRapido()));
        }
        //Idoso Rapido Muitos Inexp
        if((idade.getIdoso() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getInexperiente()> 0.0)){
            risco.setAlto(media(media(media(idade.getIdoso(), velocidade.getRapido()), acidente.getMuitos()),experiencia.getInexperiente()));
        }
        //Idoso Rapido Muitos ExpMed
        if((idade.getIdoso() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperienciaMedia()> 0.0)){
            risco.setMedio(experiencia.getExperienciaMedia());
            risco.setAlto(media(media(idade.getIdoso(), velocidade.getRapido()), acidente.getMuitos()));     
        }
        //Idoso Rapido Muitos Exp
        if((idade.getIdoso() > 0.0) && (velocidade.getRapido() > 0.0) && (acidente.getMuitos()> 0.0) && (experiencia.getExperiente()> 0.0)){
            risco.setBaixo(experiencia.getExperiente());
            risco.setAlto(media(media(idade.getIdoso(), velocidade.getRapido()), acidente.getMuitos()));     
        }
        
        if(risco.getAlto() == null)
            risco.setAlto(0.0);
        if(risco.getMedio() == null)
            risco.setMedio(0.0);
        if(risco.getBaixo() == null)
            risco.setBaixo(0.0);
        
        
        return defuzzificacao.defuzzificar(risco.getBaixo(), risco.getMedio(), risco.getAlto());          
    }
    
    public Double media(Double x, Double y){
        return (x + y)/2;
    }
    
}
