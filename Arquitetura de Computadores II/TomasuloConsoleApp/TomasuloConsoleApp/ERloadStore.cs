using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TomasuloConsoleApp
{
    class ERloadStore : EstacoesDeReserva
    {
        EstacoesDeReserva EDR = new EstacoesDeReserva();
        public static estacaoR[] erloadStore = new estacaoR[8];
        public static List<int> filaEntradaERloadStore = new List<int>();

        bool cond;

        public ERloadStore(bool isInitialized)
        {
            isInitialized = true;
        }

        public ERloadStore()
        {
            EDR.InicialER(ref erloadStore, "L/S_");
        }

       
        public void InseriERloadStore()
        {            
            int indiceERloadStore = -1;
            EDR.InseriER_LoadStore(ref erloadStore, ref indiceERloadStore);
            if (indiceERloadStore > -1)
            {
                filaEntradaERloadStore.Add(indiceERloadStore);              
            }

        }

        public bool MandaPraExecucao(ref int ind)
        {            
            foreach(int x in filaEntradaERloadStore)
            {
                if (erloadStore[x].tempo > 0)
                {
                    erloadStore[x].tempo--;
                    return false;
                }
                else
                {

                    ind = x;
                    filaEntradaERloadStore.Remove(x);

                    return true;                    
                }
            }
            return false;
        }

        public void RemoveInstrucao(int i)
        {
            erloadStore[i].tempo = -1;
            erloadStore[i].nome = "L/S_" + i.ToString();
            erloadStore[i].busy = false;
            erloadStore[i].op = "";
            erloadStore[i].Vj = -9999;
            erloadStore[i].Vk = -9999;
            erloadStore[i].Qj = "";
            erloadStore[i].Qk = "";
            erloadStore[i].A = -9999;
            erloadStore[i].Rd = 0;
            erloadStore[i].Rs = 0;
            erloadStore[i].Rt = 0;
        }


        public void PrintERloadStore()
        {
            EDR.PrintER(ref erloadStore, "LOAD/STORE");
        }

    }
}
