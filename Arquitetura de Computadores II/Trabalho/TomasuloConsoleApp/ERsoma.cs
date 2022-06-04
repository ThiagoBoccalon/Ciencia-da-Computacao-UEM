using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TomasuloConsoleApp
{
    class ERsoma: EstacoesDeReserva
    {
        EstacoesDeReserva EDR = new EstacoesDeReserva();
        public static estacaoR[] ersoma = new estacaoR[4];
        public static List<int> filaEntradaERsoma = new List<int>();
        

        public ERsoma(bool isInitialized)
        {
            isInitialized = true;
        }

        public ERsoma()
        {
            EDR.InicialER(ref ersoma, "SOMA_");
        }



        public void InseriERsoma()
        {
            int indiceERsoma = -1;
            EDR.InseriER_Soma_Mult_Desvios(ref ersoma, "ERsoma", ref indiceERsoma);
           if(indiceERsoma>-1)
                filaEntradaERsoma.Add(indiceERsoma);
                
        }

        public void PrintERsoma()
        {
            EDR.PrintER(ref ersoma, "SOMA");
        }

        /*
         * FALTA IMPLEMENTAR A FUNÇÃO QUE VERIFICA SE OPERAÇÃO ESTÁ PRONTA  
         */
        public int MandaPraExecucao(ref int r00, ref int r01, ref int r02, ref int ciclo, ref string op, ref int imm, ref string ER_nome)
        {
            foreach(int i in filaEntradaERsoma)
            {
                int rs = ersoma[i].Rs;
                int rt = ersoma[i].Rt;
                if (ersoma[i].Vj == -9999 && (DataBaseTomasulo.statusRegistradores[rs].Qi.Equals("") ||
                    DataBaseTomasulo.statusRegistradores[rs].Qi.Equals("V_I")))
                    ersoma[i].Vj = DataBaseTomasulo.statusRegistradores[rs].value;
                if(ersoma[i].Vk == -9999 && (DataBaseTomasulo.statusRegistradores[rt].Qi.Equals("") ||
                    DataBaseTomasulo.statusRegistradores[rt].Qi.Equals("V_I")))
                    ersoma[i].Vk = DataBaseTomasulo.statusRegistradores[rt].value;


                if (ersoma[i].Vj != -9999 && ersoma[i].Vk != -9999)
                {
                    ER_nome = "ERsoma" + i.ToString();
                    ciclo = ersoma[i].tempo;
                    op = ersoma[i].op;
                    r00 = ersoma[i].Rd;
                    r01 = ersoma[i].Vj;
                    r02 = ersoma[i].Vk;
                    imm = ersoma[i].imm;
                    filaEntradaERsoma.Remove(i);
                    return i;
                }
            }  
            return -1; // NO CASO DE NINGUÉM ESTÁ PRONTO PARA SER EXECUTADO
        }

        public void RemoveInstrucao(int i)
        {
            ersoma[i].tempo = -1;
            ersoma[i].nome = "SOMA_" + i.ToString();
            ersoma[i].busy = false;
            ersoma[i].op = "";
            ersoma[i].Vj = -9999;
            ersoma[i].Vk = -9999;
            ersoma[i].Qj = "";
            ersoma[i].Qk = "";
            ersoma[i].A = -9999;
            ersoma[i].Rd = 0;
            ersoma[i].Rs = 0;
            ersoma[i].Rt = 0;
        }

    }
}
