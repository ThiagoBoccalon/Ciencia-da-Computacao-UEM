using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace TomasuloConsoleApp
{

    public class LoadInMemory
    {
        public static List<string> memoria = new List<string>();
        

        public LoadInMemory()
        {
            //Console.Write("Informe o diretório do arquivo 'Assembly': ");
            string dir = @"C:/Assembly.txt";
            using (StreamReader reader = new StreamReader(@dir)) { 
                while (!reader.EndOfStream)
                    memoria.Add(reader.ReadLine());
            }
        }        

        public bool VerificaMemoria()
        {
            if (memoria.Count > 0)
                return true;
            else
                return false;
        }
    }
}
