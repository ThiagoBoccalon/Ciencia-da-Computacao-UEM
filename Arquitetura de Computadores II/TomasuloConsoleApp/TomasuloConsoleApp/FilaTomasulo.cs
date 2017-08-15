using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TomasuloConsoleApp
{
    class FilaTomasulo
    {
        const int busca = 1;
        public static List<string> fila = new List<string>();
        public static int PC = 0;
        public static bool TRAVA_TUDO = false;   

        public void Busca()
        {
            for (int i = 0; i < busca; i++)
            {
                if (LoaDinMemory.memoria.Count()>PC) {
                    fila.Add(LoaDinMemory.memoria[PC]);
                    PC++;
                }
            }            
        }

        public void PrintFila()
        {
            Console.Write("****************************************FILA****************************************\n\n");
            Console.WriteLine("POS: |   INSTRUÇÃO ");
            int posFila = 0;    

            foreach(string f in fila.Reverse<string>())
            {
                Console.Write("  {0}  | {1}\n", posFila, f);
                posFila++;
            }
        }

        public bool VerificaStatusFila()
        {
            if (fila.Count() > 0)
                return true;
            else
                return false;
        }

       

        public string Emissao()
        {
            string saida = fila[0];
            fila.Remove(saida);
            return saida;
        }


        public string ERemitida()
        {
            if (VerificaStatusFila())
            {
                string temp = fila[0];
                var instrucao = temp.Split(' ');

                if (instrucao[0].Equals("add") || instrucao[0].Equals("addi") ||
                    instrucao[0].Equals("sub") || instrucao[0].Equals("subi"))
                    return "ERsoma";

                else if (instrucao[0].Equals("and") || instrucao[0].Equals("or") ||
                    instrucao[0].Equals("not"))
                    return "ERsoma";

                else if (instrucao[0].Equals("j") || instrucao[0].Equals("blt") ||
                    instrucao[0].Equals("bgt") || instrucao[0].Equals("beq"))
                {                    
                    return "ERsoma";
                }
                    

                else if (instrucao[0].Equals("div") || instrucao[0].Equals("mul"))
                    return "ERmultiplicacao";

                else if (instrucao[0].Equals("sw") || instrucao[0].Equals("lw"))
                    return "ERloadStore";


                else
                    return "";
               
            }                
            else
            {
                Console.WriteLine("Sem instrução para ser emitida");
                return null;
            }                
        }       
    }
}
