using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TomasuloConsoleApp
{
    class UFsoma
    {
        int myCiclo;
        string operation;
        ERsoma ers = new ERsoma();
    

        public struct ufs
        {
            public bool busy;
            public int rd;
            public int rs;
            public int rt;
            public int imediato;
            public string Er_resp;
        }

        ufs uf = new ufs();
        
        public UFsoma()
        {
            uf.busy = false; // SE ESTÁ EM USO OU NÃO A UFS
        }

        public void Execution()
        {        
            int indERsoma;
            bool efetiva_RD = true;
            if (!uf.busy)
            {
                // UNIDADE DE EXECUÇÃO LIVRE
                indERsoma = ers.MandaPraExecucao(ref uf.rd, ref uf.rs, ref uf.rt, ref myCiclo, ref operation, ref uf.imediato, ref uf.Er_resp);
                if (indERsoma != -1 )
                {                   
                    uf.busy = true;
                    ers.RemoveInstrucao(indERsoma);
                }
            }
            else
            {                
                if (myCiclo != 0)
                    myCiclo--;
                else
                {
                    if (uf.busy)
                    {
                        if (MyOperation().Equals("+") && (DataBaseTomasulo.statusRegistradores[uf.rd].Qi.Equals(uf.Er_resp)))
                            DataBaseTomasulo.statusRegistradores[uf.rd].value = uf.rs + uf.rt;
                        else if (MyOperation().Equals("-") && (DataBaseTomasulo.statusRegistradores[uf.rd].Qi.Equals(uf.Er_resp)))
                            DataBaseTomasulo.statusRegistradores[uf.rd].value = uf.rs - uf.rt;
                        else if (operation.Equals("&") && (DataBaseTomasulo.statusRegistradores[uf.rd].Qi.Equals(uf.Er_resp)))
                            DataBaseTomasulo.statusRegistradores[uf.rd].value = uf.rs & uf.rt;
                        else if (operation.Equals("^") && (DataBaseTomasulo.statusRegistradores[uf.rd].Qi.Equals(uf.Er_resp)))
                            DataBaseTomasulo.statusRegistradores[uf.rd].value = uf.rs ^ uf.rt;
                        else if (operation.Equals("~") && (DataBaseTomasulo.statusRegistradores[uf.rd].Qi.Equals(uf.Er_resp)))
                            DataBaseTomasulo.statusRegistradores[uf.rd].value = ~uf.rt;
                        else if (operation.Equals("j"))
                        {
                            FilaTomasulo.PC = uf.imediato;
                            FilaTomasulo.TRAVA_TUDO = false;
                            efetiva_RD = false;
                        }else if (operation.Equals("blt"))
                        {
                            if (uf.rs < uf.rt)
                                FilaTomasulo.PC = uf.imediato;
                            FilaTomasulo.TRAVA_TUDO = false;
                            efetiva_RD = false;
                        }else if (operation.Equals("bgt"))
                        {
                            if (uf.rs > uf.rt)
                                FilaTomasulo.PC = uf.imediato;
                            FilaTomasulo.TRAVA_TUDO = false;
                            efetiva_RD = false;
                        }else if (operation.Equals("beq")){
                            if (uf.rs == uf.rt)
                                FilaTomasulo.PC = uf.imediato;
                            FilaTomasulo.TRAVA_TUDO = false;
                            efetiva_RD = false;
                        }
                        if(efetiva_RD)
                            DataBaseTomasulo.statusRegistradores[uf.rd].Qi = "";
                        uf.busy = false;
                        uf.rd = 0;
                        uf.rs = 0;
                        uf.rt = 0;
                        myCiclo = 0;

                    }
                }                   
            }              
        }

        private string MyOperation()
        {
            if (operation.Equals("add") || operation.Equals("addi")) return "+";
            else if (operation.Equals("sub") || operation.Equals("subi")) return "-";
            else return "";
        }

        public void Print_UFS()
        {
            Console.WriteLine("******************************UNIDADE FUNCIONAL SOMA******************************");
            Console.WriteLine("  STATUS |   TEMPO  |  RD  |  RS  |  RT  |");
            Console.WriteLine("  {0}  |    {1}     |   {2}  |   {3}  |   {4}  |", uf.busy.ToString(), myCiclo, uf.rd, uf.rs, uf.rt);
        }


    }
}
