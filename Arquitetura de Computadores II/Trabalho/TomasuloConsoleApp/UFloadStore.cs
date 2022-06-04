using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TomasuloConsoleApp
{
    class UFloadStore
    {
        int myCiclo  = 1;       
        ERloadStore erload_store = new ERloadStore();


        public struct ufLS
        {
            public bool busy;
            public string OP;
            public int A;
            public int RD;
            public int RS;
            public int RT;
            public string ER_resp;
        }

        ufLS uf = new ufLS();

        public UFloadStore()
        {
            uf.busy = false; // SE ESTÁ EM USO OU NÃO A UF load store
        }

        public void Execution()
        {
            
            int iLS = -1;
            if (!uf.busy)
            {
               if(erload_store.MandaPraExecucao(ref iLS))
               {
                    uf.busy = true;
                    int pos = ERloadStore.erloadStore[iLS].A;
                    uf.ER_resp = "ERloadStore_" + iLS.ToString();
                    uf.OP = ERloadStore.erloadStore[iLS].op;
                    uf.A = ERloadStore.erloadStore[iLS].A;
                    uf.RD = ERloadStore.erloadStore[iLS].Rd;
                    erload_store.RemoveInstrucao(iLS);                    
               }
            }
            else
            {
                if (uf.OP.Equals("lw"))
                {
                    if (DataBaseTomasulo.statusRegistradores[uf.RD].Qi.Equals(uf.ER_resp))
                    {
                        DataBaseTomasulo.statusRegistradores[uf.RD].value = DataBaseTomasulo.memoria[uf.A];
                        DataBaseTomasulo.statusRegistradores[uf.RD].Qi = "";
                    }

                    uf.OP = null;
                    uf.A = 0;
                    uf.RD = 0;
                    uf.busy = false;
                }
                else
                {
                    DataBaseTomasulo.memoria[uf.A] = uf.RS;                    
                    uf.OP = null;
                    uf.A = 0;
                    uf.RD = 0;
                    uf.busy = false;
                }
            }           
        }

        private bool PenalidadeDeCiclo()
        {
            myCiclo--;
            if (myCiclo < 0)
            {
                myCiclo = 1;
                return true;                
            }
            else return false;
        }

        public void PrintUF_LS()
        {
            Console.WriteLine("******************************UNIDADE FUNCIONAL LOAD/STORE******************************");
            Console.WriteLine("  STATUS | OPERACAO |  A  |  RD  |  RS  |");
            Console.WriteLine("  {0}  |    {1}     |   {2}  |   {3}  |   {4}  |", uf.busy.ToString(),  uf.OP, uf.A, uf.RD,uf.RS );
        }

    }
}
