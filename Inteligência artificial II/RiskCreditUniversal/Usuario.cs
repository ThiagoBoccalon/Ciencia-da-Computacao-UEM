using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RiskCreditUniversal
{   
    class Usuario
    {
        int sim;
        int nao;
        public static string[] dadosUsuario = new string[20]; 
        double[,] rUsuarioSimNao = new double[2, 21];
        int tMaximo;
        string[,] matrizDeTreinamento;
        string[,] matrizDeTeste;
        
        public Usuario()
        {
            tMaximo = DadosArquivo.tMax;
            matrizDeTeste = DadosArquivo.matrizTeste;
            matrizDeTreinamento = DadosArquivo.matrizTreinamento;
        }

        
        public Boolean  resultadoUsuario()
        {
            for(int i=0; i< 20; i++)
            {
                sim = 0;
                nao = 0;
                for (int j = 0; j < DadosArquivo.tMax; j++)
                {
                    if ((dadosUsuario[i].Equals(matrizDeTreinamento[j, i])) && ((matrizDeTreinamento[j, 20].Equals("1"))))
                        sim++;
                    else
                        nao++;
                }
                rUsuarioSimNao[0, i] = sim / (double) Precisao.tSim;
                rUsuarioSimNao[1, i] = nao / (double) Precisao.tNao;                
            }

            calResultado();
            if (rUsuarioSimNao[0, 20] >= rUsuarioSimNao[1, 20])
                return true;
            else
                return false;
            }       


        public void calResultado()
        {
            rUsuarioSimNao[0, 20] = 1;
            rUsuarioSimNao[1, 20] = 1;
            for (int i =0; i<20; i++)
            {
                rUsuarioSimNao[0,20] = rUsuarioSimNao[0,20] * rUsuarioSimNao[0, i];
                rUsuarioSimNao[1, 20] = rUsuarioSimNao[1,20] * rUsuarioSimNao[1, i]; 
            }
        }
    }    
}
