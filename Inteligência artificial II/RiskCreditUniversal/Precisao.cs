using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RiskCreditUniversal
{
    class Precisao
    {
        const int total = 1000;     
        public static int tSim;
        public static int tNao;
        int tM;
        string[,] mTest;
        string[,] mTrain;       
        int vPositivo;
        int fPositivo;
        int vNegativo;
        int fNegativo;
        double precisao;
        double recall;
        double erroTipo1; 
        
        public Precisao()
        {
            tM = DadosArquivo.tMax;
            mTest = DadosArquivo.matrizTeste;
            mTrain = DadosArquivo.matrizTreinamento;
        }


        
        public void calculos()
        {
            int sim;
            int nao;
            double[,] probabilidadeSimNao = new double[2, 21];
            sim = 0;
            nao = 0;
            calTotalSimNao();        
            for (int i = 0; i < total - tM; i++) // total de linhas da matriz teste
            {
                for (int j = 0; j < 20; j++)
                {
                    for(int k=0; k < tM; k++)
                    {
                        if (mTest[i, j].Equals(mTrain[k, j]))
                        {
                            if (mTrain[k, 20].Equals("1"))
                                sim++;
                            else
                                nao++;
                        }                        
                    }
                    probabilidadeSimNao[0, j] = calProbSim(sim);
                    probabilidadeSimNao[1, j] = calProbNao(nao);
                }

                if (confirmaResultado(probabilidadeSimNao).Equals("1") && (mTest[i, 20]).Equals("1"))
                    vPositivo++;
                else if (confirmaResultado(probabilidadeSimNao).Equals("1") && mTest[i, 20].Equals("2"))
                    fPositivo++;
                else if (confirmaResultado(probabilidadeSimNao).Equals("2") && mTest[i, 20].Equals("2"))
                    vNegativo++;
                else
                    fNegativo++;          
            }               
        }

        public string confirmaResultado(double[,] resultados)
        {
            double rSim = 1;
            double rNao = 1;
            for (int i = 0; i < 20; i++)
            {
                rSim *= resultados[0, i];
                rNao *= resultados[1, i];
            }

            if (rSim >= rNao)
                return "1";
            else
                return "2";
        }
        
        public double calProbSim(double s)
        {
            return (s / (double)tSim);
        }

        public double calProbNao(double n)
        {
            return (n / (double)tNao);
        }

        public void calTotalSimNao()
        {
            for (int i = 0; i < tM; i++) {
                if (mTrain[i, 20].Equals("1"))
                    tSim++;
                else
                    tNao++;
            }
        }


        public int calcTamanhoDasMatrizes(double vMax)
        {                    
            int tM = 0;
            tM = (int)(vMax * total);
            return tM;
        }

        public double getAcurracy()
        {
            return  (vPositivo + vNegativo) / (double) (vPositivo + vNegativo + fNegativo + fPositivo);
        }

        public int getFalsoPositivo()
        {
            return fPositivo;
        }

        public int getFalsoNegativo()
        {
            return fNegativo;
        }

        public int getVerdadeiroPositivo()
        {
            return vPositivo;
        }

        public int getVerdadeiroNegativo()
        {
            return vNegativo;
        }

        public double getPrecisao()
        {
            precisao = vPositivo / (double)(vPositivo + fPositivo);
            return precisao;
        }

        public double getRecall()
        {
            recall = vPositivo / (double)(vPositivo + fNegativo);
            return recall;
        }

        public double getErroTipo1()
        {
            erroTipo1 = fPositivo / (double)(fPositivo + vNegativo);
            return erroTipo1;
        }
    }
}
