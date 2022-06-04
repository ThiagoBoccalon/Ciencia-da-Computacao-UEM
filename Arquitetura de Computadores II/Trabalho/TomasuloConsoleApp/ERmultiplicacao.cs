using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TomasuloConsoleApp
{
    class ERmultiplicacao : EstacoesDeReserva
    {
        EstacoesDeReserva EDRm = new EstacoesDeReserva();
        public static estacaoR[] ermult = new estacaoR[8];
        public static List<int> filaEntradaERmult = new List<int>();


        public ERmultiplicacao(bool isInitialized)
        {
            isInitialized = true;
        }

        public ERmultiplicacao()
        {
            EDRm.InicialER(ref ermult, "MULT_");
        }

        public void InseriERmultiplicacao()
        {
            int indiceERmult = -1;
            EDRm.InseriER_Soma_Mult_Desvios(ref ermult, "ERmultiplicacao", ref indiceERmult);
            if (indiceERmult > -1)
                filaEntradaERmult.Add(indiceERmult);
        }
        
        public void PrintERmultiplicacao()
        {
            EDRm.PrintER(ref ermult, "MULTIPLICACAO");
        }
        
        public int MandaPraExecucao(ref int r00, ref int r01, ref int r02, ref int ciclo, ref string op, ref string ER_nome)
        {
            foreach (int i in filaEntradaERmult)
            {
                
                int rs = ermult[i].Rs;
                int rt = ermult[i].Rt;
                if (ermult[i].Vj == -9999 && (DataBaseTomasulo.statusRegistradores[rs].Qi.Equals("") ||
                    DataBaseTomasulo.statusRegistradores[rs].Qi.Equals("V_I")))
                    ermult[i].Vj = DataBaseTomasulo.statusRegistradores[rs].value;
                if (ermult[i].Vk == -9999 && (DataBaseTomasulo.statusRegistradores[rt].Qi.Equals("") ||
                    DataBaseTomasulo.statusRegistradores[rt].Qi.Equals("V_I")))
                    ermult[i].Vk = DataBaseTomasulo.statusRegistradores[rt].value;
                    
                if (ermult[i].Vj != -9999 && ermult[i].Vk != -9999)
                {
                    ER_nome = "ERmultiplicacao" + i.ToString();
                    ciclo = ermult[i].tempo;
                    op = ermult[i].op;
                    r00 = ermult[i].Rd;
                    r01 = ermult[i].Vj;
                    r02 = ermult[i].Vk;
                    filaEntradaERmult.Remove(i);
                    return i;
                }
            }
            return -1; // NO CASO DE NINGUÉM ESTÁ PRONTO PARA SER EXECUTADO
        }
        
        public void RemoveInstrucao(int i)
        {
            ermult[i].tempo = -1;
            ermult[i].nome = "MULT_" + i.ToString();
            ermult[i].busy = false;
            ermult[i].op = "";
            ermult[i].Vj = -9999;
            ermult[i].Vk = -9999;
            ermult[i].Qj = "";
            ermult[i].Qk = "";
            ermult[i].A = -9999;
            ermult[i].Rd = 0;
            ermult[i].Rs = 0;
            ermult[i].Rt = 0;
        }
        
    }
}
