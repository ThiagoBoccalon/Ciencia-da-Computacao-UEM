package hotelanimais;

import java.util.Scanner;
/**
 * @author Valeria
 */
public class HotelAnimais {

    private boolean usuarioAutenticado;
    private int numeroContaAtual;
    private BancoDeDados bd;

    private static final int CONSULTA = 1;
    private static final int SAQUE = 2;
    private static final int DEPOSITO = 3;
    private static final int SAIR = 4;

    public HotelAnimais (){
        this.usuarioAutenticado = false;
        this.numeroContaAtual = 0;
        this.bd = new BancoDeDados();
    }

    public void executa(){

        while (true) {
            while (!this.usuarioAutenticado) {
                System.out.println("Bem-vindo!");
                autenticaUsuario();
            }

            realizaTransacao();
            this.usuarioAutenticado = false;
            this.numeroContaAtual = 0;
            System.out.println("Obrigada!\n");
        }
    }

    private void autenticaUsuario (){

        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite o numero da conta: ");
        int numeroConta = entrada.nextInt();
        System.out.println("Digite a senha: ");
        int senha = entrada.nextInt();

        this.usuarioAutenticado = bd.autenticaUsuario(numeroConta, senha);

        if (this.usuarioAutenticado) {
            this.numeroContaAtual = numeroConta;
        }
        else {
            System.out.println("Numero de conta ou senha invalida.\nPor favor, tente novamente.");
        }
    }

    private void realizaTransacao() {

        Transacao transacaoAtual = null;
        boolean sair = false;

        while (!sair){

            int opcao = mostraMenuPrincipal();

            switch(opcao){
                case CONSULTASALDO:
                case SAQUE:
                case DEPOSITO:
                    transacaoAtual = criaTransacao(opcao);
                    transacaoAtual.executa();
                    break;
                case SAIR:
                    System.out.println("Encerrando a sessao...");
                    sair = true;
                    break;
                default:
                    System.out.println("Opção inválida. Tente de novo.");
            }
        }
    }

    private Transacao criaTransacao(int tipo) {
        Transacao transacao = null;

        switch(tipo) {
            case CONSULTASALDO:
                transacao = new ConsultaSaldo(this.numeroContaAtual, this.bd);
                break;
            case SAQUE:
                transacao = new Saque(this.numeroContaAtual, this.bd);
                break;
            case DEPOSITO:
                transacao = new Deposito(this.numeroContaAtual, this.bd);
        }
        return transacao;
    }

    private int mostraMenuPrincipal(){

        System.out.println("\nMenu Principal:");
        System.out.println("1 - Consultar saldo");
        System.out.println("2 - Sacar");
        System.out.println("3 - Depositar");
        System.out.println("4 - Sair");
        System.out.printf("Digite sua opcao: ");

        Scanner entrada = new Scanner(System.in);
        return entrada.nextInt();
    }

}
