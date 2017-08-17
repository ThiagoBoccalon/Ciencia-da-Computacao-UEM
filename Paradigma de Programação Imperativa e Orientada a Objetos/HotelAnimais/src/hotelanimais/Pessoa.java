/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package hotelanimais;

/**
 *
 * @author helio
 */
public class Pessoa {

    private String nome;
    private String cpf;
    private String telefone;
    
    

    public Pessoa() {
    }

    public Pessoa(String nome, String cpf,String telefone) {
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
    }

    public String getNome() {
        return nome;
    }
    
    public String setNome() {
        return nome;
    } 

    public String getCpf() {
        return cpf;
    }
    
    public String getTelefone() {
        return telefone;
    }

    public void setCpf(String cpf) {
        validaCpf(cpf);
        this.cpf = cpf;        
    }

    private void validaCpf(String cpf) {
        
    }
    

}
