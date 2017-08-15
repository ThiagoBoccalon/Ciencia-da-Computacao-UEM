using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TomasuloConsoleApp
{
    class CalculoDeEndereco
    {
        int penalidade_1Ciclo = 1;
        bool livre = false;
        public static bool instrucaoPronta = false;
        FilaTomasulo fila = new FilaTomasulo();
        DataBaseTomasulo dbt = new DataBaseTomasulo();
        public static string temp = null;

        public struct load
        {
            public int rd, rs, rt, imm, value_A;
        }

        public static load[] ld = new load[1];
        

        public void InseriCalcEndereco()
        {
            if (temp==null) // está livre para se fazer o calculo
            {
                livre = false;
                instrucaoPronta = false;               
                temp = fila.Emissao(); // pega a instrução que está na fila                

                var instrucaoLogica = temp.Split(' ');
                if (instrucaoLogica[0].Equals("lw"))
                {
                    ld[0].rd = dbt.ValueRegistradores(ref instrucaoLogica[1]);
                    ld[0].imm = TratamentoImediato(instrucaoLogica[2]);
                    ld[0].rs = TratamentoRegistrador(instrucaoLogica[2]);
                    DataBaseTomasulo.statusRegistradores[ld[0].rd].Qi = "Calculo_End";
                }
                else
                {
                    ld[0].rs = dbt.ValueRegistradores(ref instrucaoLogica[1]);
                    ld[0].imm = TratamentoImediato(instrucaoLogica[2]);
                    ld[0].rt = TratamentoRegistrador(instrucaoLogica[2]);
                }
            }            
        }

        public int TratamentoImediato(string imediato)
        {
            int imm;

            if (imediato.Contains("#-"))
            {
                int tam = imediato.Count() - 4;
                imediato = imediato.Remove(tam, 4);
                imediato = imediato.Replace("#-", " ");
                imm = -Int32.Parse(imediato);
            }
            else
            {
                int tam = imediato.Count() - 4;
                imediato = imediato.Remove(tam, 4);
                imediato = imediato.Replace("#", " ");
                imm = Int32.Parse(imediato);
            }
            return imm;
        }

        public int TratamentoRegistrador(string registrador)
        {
            int tam = registrador.Count() - 4;
            registrador = registrador.Remove(0, tam);
            registrador = registrador.Replace("(", "");
            registrador = registrador.Replace(")", "");
            return dbt.ValueRegistradores(ref registrador);            
        }

        public bool Calcula_Pronto()
        {            
            if (temp != null)
            {
                int i = ld[0].rs;
                if (penalidade_1Ciclo != 0)
                {
                    penalidade_1Ciclo--; return false;
                }
                else
                {
                    if (DataBaseTomasulo.statusRegistradores[i].Qi.Equals("") ||
                        DataBaseTomasulo.statusRegistradores[i].Qi.Equals("V_I"))
                    {
                        livre = false;
                        penalidade_1Ciclo = 1;                        
                        ld[0].value_A = DataBaseTomasulo.statusRegistradores[i].value + ld[0].imm;
                        return true;
                    }
                }

            }
            return false;
        }

        public void PrintCaculoDeEndereco()
        {
            Console.WriteLine("*******************CALCULO DE ENDERECO***********************");
            Console.WriteLine("Ocupado: {0} | Instrucao: {1}", instrucaoPronta, temp);
        }
    }
}
