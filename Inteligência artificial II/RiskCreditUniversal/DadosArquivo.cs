using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using Windows.Storage;
using System.Diagnostics;
using System.Collections;

namespace RiskCreditUniversal
{
    class DadosArquivo
    {
        const int totalLinhasDados = 1000;
        string[,] matrizTotal = new string[totalLinhasDados, 21];
        public static string[,] matrizTreinamento;
        public static string[,] matrizTeste;
        double qtdTrain;
        public static int tMax;
        private static Random random;
        ArrayList indiceMatriz = new ArrayList();


        public async void openFile(double vlTrain)
        {
            qtdTrain = vlTrain;             
            StorageFolder appFolder = Windows.ApplicationModel.Package.Current.InstalledLocation;
            string nameFolder = @"Assets\german.txt";
            StorageFile manifestFile = await appFolder.GetFileAsync(nameFolder);
            string textAll = await FileIO.ReadTextAsync(manifestFile);           
            string textRemovedBreaks = textAll.Replace("\r\n", " ");   // remove quebra de linha do arquivo e add no lugar " "
            string[] textSplit = textRemovedBreaks.Split(' ');           // remove os " " e a cada espaço encontrando add na string em uma posição i                     
            criarMatrizTotal(textSplit);
        }

        public void criarMatrizTotal(string[] txtSplit)
        {
            int k = 0;
            for (int i = 0; i < totalLinhasDados; i++)
            {
                for (int j = 0; j < 21; j++)
                {
                    matrizTotal[i, j] = txtSplit[k];
                    k++;
                }
            }
            matrizTrainAndTest();
        }

        private void matrizTrainAndTest()
        {            
            tMax = calcTamanhoDasMatrizes();
            matrizTreinamento = new string[tMax, 21];
            matrizTeste = new string[totalLinhasDados - tMax, 21];
            int indTrn = 0, indTst = 0;
            defMatrizTreinAndTest();

            for (int i=0; i<totalLinhasDados; i++)
            {
                /*
                Criar matriz de Treinamento
                */
                if (indiceMatriz.Contains(i))
                {
                    for (int j = 0; j < 21; j++)
                    {
                        matrizTreinamento[indTrn, j] = matrizTotal[i, j];                        
                    }
                    indTrn++;
                }
                else
                {
                    /*
                    Criando matriz de Teste
                    */
                    for (int j = 0; j < 21; j++)
                    {
                        matrizTeste[indTst, j] = matrizTotal[i, j];                        
                    }
                    indTst++;
                }
            }          
        }

        public int calcTamanhoDasMatrizes()
        {
            int tM = 0;
            tM = (int)(qtdTrain * totalLinhasDados);
            return tM;
        }


        // guardar linhas que serão usadas para o treinamento
        private void defMatrizTreinAndTest()
        {
            int lR;
            for (int i = 0; i < tMax; i++)
            {
                lR = eRandom();
                if (compArray(ref indiceMatriz, lR))
                    indiceMatriz.Add(lR);        //  GUARDA LINHA QUE SERÁ UTILIZADA PARA MATRIZ DE TREINAMENTO
                else
                    i--;
            }
            indiceMatriz.Sort();
        }


        public static void iNit()
        {
            if (random == null) random = new Random();
        }

        public static int eRandom()
        {
            iNit();
            return random.Next(0, totalLinhasDados - 1);
        }

        public Boolean compArray(ref ArrayList iDm, int vR)
        {
            if (iDm.Contains(vR))
                return false;
            else
                return true;
        }

    }    
}
