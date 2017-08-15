using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TomasuloConsoleApp
{
    public class EstacoesDeReserva
    {
        public struct estacaoR
        {
            public int tempo;
            public string nome;
            public bool busy; 
            public string op;
            public int Vj;
            public int Vk;
            public string Qj;
            public string Qk;
            public int A;
            public int Rd, Rs, Rt;
            public int imm;
        }

        // copy alterada para ERsoma 
       // const int size = 4;
       // public static estacaoR[] ersoma = new estacaoR[8];
        FilaTomasulo myFila = new FilaTomasulo();
        DataBaseTomasulo db = new DataBaseTomasulo();
        

        public void InicialER(ref estacaoR[] er, string nome)
        {
        
            for (int i = 0; i < er.Length; i++)
            {
                er[i].tempo = -1;
                er[i].nome = nome + i.ToString();
                er[i].busy = false;
                er[i].op = "";
                er[i].Vj = -9999;
                er[i].Vk = -9999;
                er[i].Qj = "";
                er[i].Qk = "";
                er[i].A = -9999;
                er[i].Rd = 0;
                er[i].Rs = 0;
                er[i].Rt = 0;
                er[i].imm = 0;
            }


        }
        
        public void InseriER_LoadStore(ref estacaoR[] er, ref int livre)
        {
           // int R_dest;
            if (ERlivre(er) != -1)
                livre = ERlivre(er);
            else
                return;

            er[livre].busy = true;
            er[livre].A = CalculoDeEndereco.ld[0].value_A;
            var instrucao = CalculoDeEndereco.temp.Split(' ');
            CalculoDeEndereco.temp = null;

            // SETs DA ESTACAO DE RESERVA LOAD STORE
            er[livre].tempo = db.Ciclos(instrucao[0]);
            er[livre].op = instrucao[0];
            er[livre].Vj = CalculoDeEndereco.ld[0].imm; // valor já calculado
            er[livre].A = CalculoDeEndereco.ld[0].value_A;
            er[livre].Rd = CalculoDeEndereco.ld[0].rd;
            if (er[livre].op.Equals("lw") && (DataBaseTomasulo.statusRegistradores[er[livre].Rd]).Qi.Equals("Calculo_End"))
                DataBaseTomasulo.statusRegistradores[er[livre].Rd].Qi = "ERloadStore_" + livre;                           
        }
        
        public void InseriER_Soma_Mult_Desvios(ref estacaoR[] er, string erNome, ref int livre)
        {
            if (myFila.ERemitida().Equals(erNome))
            {
                int RG00;
                int RG01 = -99;
                int RG02 = -99;
                string temp = myFila.Emissao(); // pega a instrução que está na fila
                var instrucao = temp.Split(' ');

                if (ERlivre(er) != -1)
                    livre = ERlivre(er);
                else
                    return;

                er[livre].tempo = db.Ciclos(instrucao[0]);
                er[livre].op = instrucao[0];

                if (instrucao[0].Equals("j"))
                {
                    FilaTomasulo.TRAVA_TUDO = true;
                    ValueImediato(instrucao[1], ref er[livre].imm);
                    return;
                }
                else if (instrucao[0].Equals("blt") || instrucao[0].Equals("bgt") ||
                    instrucao[0].Equals("beq"))
                {
                    FilaTomasulo.TRAVA_TUDO = true;
                    er[livre].Rs = db.ValueRegistradores(ref instrucao[1]);
                    er[livre].Rt = db.ValueRegistradores(ref instrucao[2]);
                    ValueImediato(instrucao[3], ref er[livre].imm);
                    return;
                }

                er[livre].Rd = db.ValueRegistradores(ref instrucao[1]);
                RG00 = er[livre].Rd;
                er[livre].busy = true;



                if (ComImediato(instrucao[0]))
                {
                    /*FAZ O IF EM CASO DE NÃO CONTER VALOR IMEDIATO PARA O RG01*/
                    if (!ValueImediato(instrucao[2], ref RG01))
                    {
                        er[livre].Rs = db.ValueRegistradores(ref instrucao[2]);
                        RG01 = er[livre].Rs;
                        if (DataBaseTomasulo.statusRegistradores[RG01].Qi.Equals("") ||
                            DataBaseTomasulo.statusRegistradores[RG01].Qi.Equals("V_I"))
                        {
                            //  NESTE CASO O VALOR CONTIDO NO REGISTRADOR ESTÁ CORRETO
                            er[livre].Vj = DataBaseTomasulo.statusRegistradores[RG01].value;
                        }
                        else
                        {
                            // CASO EM QUE O VALOR DO REGISTRADOR RG01 NÃO ESTEJA CORRETO
                            er[livre].Qj = DataBaseTomasulo.statusRegistradores[RG01].Qi;
                        }
                    }
                    else
                        er[livre].Vj = RG01;


                    /*FAZ O IF EM CASO DE NÃO CONTER UM VALOR IMEDIATO NO RG02*/
                    if (!ValueImediato(instrucao[3], ref RG02))
                    {
                        er[livre].Rt = db.ValueRegistradores(ref instrucao[3]);
                        RG02 = er[livre].Rt;
                        if (DataBaseTomasulo.statusRegistradores[RG02].Qi.Equals("") ||
                            DataBaseTomasulo.statusRegistradores[RG02].Qi.Equals("V_I"))
                        {
                            // NESTE CASO O VALOR CONTIDO NO REGISTRADOR ESTÁ CORRETO
                            er[livre].Vk = DataBaseTomasulo.statusRegistradores[RG02].value;
                        }
                        else
                        {
                            // CASO EM QUE O VALOR DO REGISTRADOR RG02 NÃO ESTÁ CORRETO
                            er[livre].Qk = DataBaseTomasulo.statusRegistradores[RG02].Qi;
                        }
                    }
                    else
                        er[livre].Vk = RG02;

                    DataBaseTomasulo.statusRegistradores[RG00].Qi = erNome + livre;
                }
                else // SEM IMEDIATO + TINHA ALGUÉM NA FILA
                {
                    er[livre].Rs = db.ValueRegistradores(ref instrucao[2]);
                    er[livre].Rt = db.ValueRegistradores(ref instrucao[3]);
                    RG01 = er[livre].Rs; RG02 = er[livre].Rt;

                    if (DataBaseTomasulo.statusRegistradores[RG01].Qi.Equals("") ||
                        DataBaseTomasulo.statusRegistradores[RG01].Qi.Equals("V_I"))
                    {
                        //  NESTE CASO O VALOR CONTIDO NO REGISTRADOR ESTÁ CORRETO
                        er[livre].Vj = DataBaseTomasulo.statusRegistradores[RG01].value;
                    }
                    else
                    {
                        // CASO EM QUE O VALOR DO REGISTRADOR RG01 NÃO ESTEJA CORRETO
                        er[livre].Qj = DataBaseTomasulo.statusRegistradores[RG01].Qi;
                    }
                    if (DataBaseTomasulo.statusRegistradores[RG02].Qi.Equals("") ||
                        DataBaseTomasulo.statusRegistradores[RG02].Qi.Equals("V_I"))
                    {
                        // NESTE CASO O VALOR CONTIDO NO REGISTRADOR ESTÁ CORRETO
                        er[livre].Vk = DataBaseTomasulo.statusRegistradores[RG02].value;
                    }
                    else
                    {
                        // CASO EM QUE O VALOR DO REGISTRADOR RG02 NÃO ESTÁ CORRETO
                        er[livre].Qk = DataBaseTomasulo.statusRegistradores[RG02].Qi;
                    }
                    DataBaseTomasulo.statusRegistradores[RG00].Qi = erNome + livre;
                }
            }
        }
        
        public bool ValueImediato(string auxInst, ref int auxRG)
        {
            if (auxInst.Contains("#-"))
            {
                auxInst = auxInst.Replace("#-", "");
                auxRG = -Int32.Parse(auxInst);
                return true;
            }
            else if (auxInst.Contains("#"))
            {
                auxInst = auxInst.Replace("#", "");
                auxRG = Int32.Parse(auxInst);
                return true;
            }
            else return false;
        }

        int ERlivre(estacaoR[] er)
        {

            for (int i = 0; i < 4; i++)
            {
                if (er[i].busy == false)
                    return i;
            }
            return -1; // caso não tenha nenhuma livre TRATAR DEPOIS
        }

        public void PrintER(ref estacaoR[] er, string ERnome)
        {
            Console.WriteLine("\n**************************************ESTAÇÃO DE RESERVA {0}**************************************\n", ERnome);
            Console.WriteLine("| TEMPO |  NOME  |  BUSY  | OPERACAO |   Vj   |   Vk   |   Qj   |   Qk   |   A   |");

            for (int i = 0; i < er.Length; i++)
            {
                Console.WriteLine("|  {0}   | {1} |  {2}  |   {3}    |  {4}  |  {5}  |  {6}  | {7} | {8} |",
                    er[i].tempo.ToString(), er[i].nome, er[i].busy.ToString(), er[i].op,
                    er[i].Vj.ToString(), er[i].Vk.ToString(), er[i].Qj, er[i].Qk, er[i].A);
            }
            Console.WriteLine();
        }


        private bool SemImediato(string myOperation)
        {
            if (myOperation.Equals("add") || myOperation.Equals("sub") || myOperation.Equals("mul") ||
                myOperation.Equals("div")) return true;
            else
                return false;
        }

        private bool ComImediato(string myOperation)
        {
            if (myOperation.Equals("addi") || myOperation.Equals("subi")) return true;
            else
                return false;
        }
        
        private int ValueImediato(string inst)
        {
            if (inst.Contains("#-"))
                return Int32.Parse(inst);
            else
                return Int32.Parse(inst);
        }

    }
}
