using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TomasuloConsoleApp
{
    class UFmultiplicacao
    {
        int myCiclo;
        string operation;
        ERmultiplicacao erm = new ERmultiplicacao();
       

        public struct ufs
        {
            public bool busy;
            public int rd;
            public int rs;
            public int rt;
            public string ER_resp;
        }

        ufs ufmul = new ufs();

        public UFmultiplicacao()
        {
            ufmul.busy = false; // SE ESTÁ EM USO OU NÃO A UFS
        }

        public void Execution()
        {
            int indERmult;
            if (!ufmul.busy)
            {
                // UNIDADE DE EXECUÇÃO LIVRE
                indERmult = erm.MandaPraExecucao(ref ufmul.rd, ref ufmul.rs, ref ufmul.rt, ref myCiclo, ref operation, ref ufmul.ER_resp);
                if (indERmult != -1)
                {
                    ufmul.busy = true;
                    erm.RemoveInstrucao(indERmult);
                }
            }
            else
            {
                if (myCiclo != 0)
                    myCiclo--;
                else
                {
                    
                    if (ufmul.busy)
                    {                  
                        
                        if (MyOperation().Equals("/") && DataBaseTomasulo.statusRegistradores[ufmul.rd].Qi.Equals(ufmul.ER_resp))
                        {
                            DataBaseTomasulo.statusRegistradores[ufmul.rd].value = ufmul.rs / ufmul.rt;
                            DataBaseTomasulo.statusRegistradores[ufmul.rd].Qi = "";
                        }
                        else if(DataBaseTomasulo.statusRegistradores[ufmul.rd].Qi.Equals(ufmul.ER_resp))
                        {
                            DataBaseTomasulo.statusRegistradores[ufmul.rd].value = ufmul.rs * ufmul.rt;
                            DataBaseTomasulo.statusRegistradores[ufmul.rd].Qi = "";
                        }
                        
                        ufmul.busy = false;                        
                        ufmul.rd = 0;
                        ufmul.rs = 0;
                        ufmul.rt = 0;
                        myCiclo = 0;
                    }
                }
            }
        }

        private string MyOperation()
        {
            if (operation.Equals("div")) return "/";
            else return "*";
        }

        public void Print_UFM()
        {
            Console.WriteLine("******************************UNIDADE FUNCIONAL MULTIPLICACAO******************************");
            Console.WriteLine("  STATUS |   TEMPO  |  RD  |  RS  |  RT  |");
            Console.WriteLine("  {0}  |    {1}     |   {2}  |   {3}  |   {4}  |", ufmul.busy.ToString(), myCiclo, ufmul.rd, ufmul.rs, ufmul.rt);
        }
    }
    
}
