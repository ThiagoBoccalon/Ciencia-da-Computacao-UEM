/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelanimais;

/**
 *
 * @author Thiago
 */
public class Dono extends Pessoa{
     
    
private Pessoa segundoResponsavel;
    


    
    public Dono(String nome, String endereco, String telefone, Pessoa segundoResponsavel){
        super (nome,endereco, telefone);    
        this.segundoResponsavel = segundoResponsavel;
    }

    public Pessoa getSegundoResponsavel() {
        return segundoResponsavel;
    }

    public void setSegundoResponsavel(Pessoa segundoResponsavel) {
        this.segundoResponsavel = segundoResponsavel;
    }


}

