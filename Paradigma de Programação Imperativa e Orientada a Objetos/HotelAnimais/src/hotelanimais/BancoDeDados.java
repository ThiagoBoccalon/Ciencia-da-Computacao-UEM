package hotelanimais;

import java.util.HashSet;
import java.util.Set;

/*
 * @author Valeria
 */
public class BancoDeDados {

    private Set<Acomodacao> numero;

    public BancoDeDados(){
         Animal = new HashSet<nome>();
        nome.add(new Conta(1, 1, 0.0));
        contas.add(new Conta(22222, 22222, 1000.0));
        contas.add(new Conta(33333, 33333, 500.0));
    }

    private Conta getConta(int numConta){
        for (Conta contaAtual : contas) {
            if (contaAtual.getNumero() == numConta)
                return contaAtual;
        }
        return null;
    }

    public boolean autenticaUsuario(int numConta, int senha){
        Conta contaUsuario = getConta(numConta);

        if (contaUsuario != null)
            return contaUsuario.validaSenha(senha);
        else
            return false;
    }

    public double getSaldo (int numConta){
        Conta temp = getConta(numConta);
        return temp.getSaldo();
        //return getConta(numConta).getSaldo();
    }

    public void credita(int numConta, double valor){
        getConta(numConta).credita(valor);
    }

    public void debita(int numConta, double valor){
        getConta(numConta).debita(valor);
    }

}
