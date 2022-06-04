using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TomasuloConsoleApp
{
    public class DataBaseTomasulo
    {
        public static int[] memoria = new int[256];

        public struct BancoRegistradores
        {            
            public int value;  // antigo "Qi"
            public string Qi;  // antigo "status"
            
        }

        public static BancoRegistradores[] statusRegistradores = new BancoRegistradores[9];

        public DataBaseTomasulo(bool isInitialized)
        {
            isInitialized = true;
        }

        public DataBaseTomasulo()
        {
            Random randNum = new Random();
            statusRegistradores[0].value = 2;
            statusRegistradores[0].Qi = "";
            

            for(int i = 1; i < 9; i++)
            {
                statusRegistradores[i].value = randNum.Next(100);
                statusRegistradores[i].Qi = "V_I";
            }

            for (int i = 0; i < 256; i++)
                memoria[i] = -99;
            memoria[6] = 29;
        }

        public int Ciclos(string cicloOp) {
            if (cicloOp.Equals("add") ||
                cicloOp.Equals("addi") ||
                cicloOp.Equals("sub") ||
                cicloOp.Equals("subi")
                ) return 5;

            else if (cicloOp.Equals("mul")) return 10;
            else if (cicloOp.Equals("div")) return 20;

            else if (cicloOp.Equals("and") ||
                    cicloOp.Equals("or") ||
                    cicloOp.Equals("not")
                ) return 5;

            else if (cicloOp.Equals("blt") ||
                    cicloOp.Equals("bgt") ||
                    cicloOp.Equals("beq") ||
                    cicloOp.Equals("j")
                    ) return 5;

            else if (cicloOp.Equals("lw") ||
                    cicloOp.Equals("sw")
                ) return 5;

            return -1; // no caso de Label               
        }

        public int ValueRegistradores(ref string inst)
        {

            if (inst.Equals("R0")) return 0;
            else if (inst.Equals("R1")) return 1;
            else if (inst.Equals("R2")) return 2;
            else if (inst.Equals("R3")) return 3;
            else if (inst.Equals("R4")) return 4;
            else if (inst.Equals("R5")) return 5;
            else if (inst.Equals("R6")) return 6;
            else if (inst.Equals("R7")) return 7;
            else if (inst.Equals("R8")) return 8;
            
            return -9999;        
            
        }

        public void PrintBancoRegistradores()
        {
            Console.WriteLine("\n\n*****************************BANCO DE REGISTRADORES*****************************\n");            
            Console.Write("Reg -->  Qi");
            for (int i = 0; i < 9; i++)
                Console.Write("| R{0} -->  {1} ", i, statusRegistradores[i].value);
            
            Console.Write("\nReg --> status");
            for(int i=0;i<9;i++)
                Console.Write("| R{0}:  {1} ", i, statusRegistradores[i].Qi);
            Console.WriteLine("\n");                            
        }
       
        public void Printmemoria()
        {
            Console.WriteLine("\n\n*****************************MEMORIA*****************************\n");
            Console.WriteLine(" POS: | VALUE");
            for(int y=0;y<256;y++)
            {
                if (memoria[y] != -99)
                    Console.WriteLine("  {0}  |  {1}  |",y,memoria[y]);
            }
            Console.WriteLine("\n");
        }

    }
}
