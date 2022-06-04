using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TomasuloConsoleApp
{
    class Program
    {
        LoadInMemory loadInMemory = new LoadInMemory();
        DataBaseTomasulo dbTomasulo = new DataBaseTomasulo();
        FilaTomasulo filaTomasulo = new FilaTomasulo();
        ERsoma ersoma = new ERsoma();
        ERmultiplicacao ermult = new ERmultiplicacao();
        ERloadStore erLoadStore = new ERloadStore();
        CalculoDeEndereco calEnd = new CalculoDeEndereco();
        static public bool tomasuloExecution = true;
 
        UFsoma ufsoma = new UFsoma();
        UFmultiplicacao ufmultiplicacao = new UFmultiplicacao();
        UFloadStore ufloadStore = new UFloadStore();

        struct zzz
        {
            public string za;
        };

        static void Main(string[] args)
        {
            Program tomasulo = new Program();
            tomasulo.Tomasulo();
         }

        public void Tomasulo()
        {
            int ciclo = 1;

            while (tomasuloExecution)
            {
                Console.WriteLine("                              Ciclo: {0}", ciclo);

                /*INICIO -> EXECUÇÃO*/
                ufmultiplicacao.Execution();
                ufsoma.Execution();
                ufloadStore.Execution();


                /*FIM -> EXECUÇÃO*/

                /* INICIO -> EMISSÃO*/              
                    if (filaTomasulo.VerificaStatusFila())
                    {
                    bool controle = false;
                    if (filaTomasulo.ERemitida().Equals("ERsoma"))
                        ersoma.InseriERsoma();
                    else if (filaTomasulo.ERemitida().Equals("ERmultiplicacao"))
                        ermult.InseriERmultiplicacao();
                    else if (filaTomasulo.ERemitida().Equals("ERloadStore"))
                    {
                        calEnd.InseriCalcEndereco(); controle = true;
                    }
                        if (CalculoDeEndereco.temp != null)
                        {
                        if (calEnd.Calcula_Pronto()) {
                            erLoadStore.InseriERloadStore();
                            if (controle)
                                calEnd.InseriCalcEndereco();
                            /* if (CalculoDeEndereco.temp == null & filaTomasulo.ERemitida().Equals("ERloadStore"))
                                calEnd.InseriCalcEndereco(); */
                        }
                        
                        }
                    }
                    else
                    {
                        //calEnd.Calcula_Pronto();
                        if (calEnd.Calcula_Pronto())
                            erLoadStore.InseriERloadStore();
                    }
               
                /*FIM -> EMISSÃO*/


                /*INICIO -> BUSCAS*/
                if (!FilaTomasulo.TRAVA_TUDO )
                {
                    if (loadInMemory.VerificaMemoria())
                        filaTomasulo.Busca();
                }               
                /*FIM - BUSCAS*/


                /*INICIO -> PRINTS*/
                // MEMORIA + REGISTRADORES
                dbTomasulo.PrintBancoRegistradores();
                //FILA + CALC ENDERECO
                filaTomasulo.PrintFila();
                calEnd.PrintCaculoDeEndereco();
                //ESTACOES DE RESERVA
                ersoma.PrintERsoma();                
                ermult.PrintERmultiplicacao();
                erLoadStore.PrintERloadStore();
                // UNIDADES FUNCIONAIS
                ufsoma.Print_UFS();
                ufmultiplicacao.Print_UFM();
                ufloadStore.PrintUF_LS();
                dbTomasulo.Printmemoria();
                /*FIM -> PRINTS*/

                //PULA DE CICLO
                ciclo++;
                Console.WriteLine("\n#######################################################################" +
                    "##############################\n");
                Console.ReadKey();                       
            }
        }
    }
}
