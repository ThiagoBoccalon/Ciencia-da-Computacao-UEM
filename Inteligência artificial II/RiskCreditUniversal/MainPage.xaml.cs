using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;
// Class add for Project

using Windows.Storage;
using System.Threading.Tasks;
using System.Diagnostics;
using System.Collections;

// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=402352&clcid=0x409

namespace RiskCreditUniversal
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class MainPage : Page
    {
  
        DadosArquivo dadosArq = new DadosArquivo();
        Precisao precisao;
        string[] dadosUsuario = new string[20];
        
     
        public MainPage()
        {            
            this.InitializeComponent();
        }

        
        
        private void buttonTest_Click(object sender, RoutedEventArgs e)
        {            
            dadosArq.openFile(capturaValorTreinamento());
            precisao = new Precisao();
            precisao.calculos();
            
            
            precisaoTextBox.Text = "Precisão: " + Convert.ToString(precisao.getPrecisao());
            falsoPositivoTextBox.Text = "Falso Positivo: " + Convert.ToString(precisao.getFalsoPositivo());
            falsoNegativoTextBox.Text = "Falso Negativo: " + Convert.ToString(precisao.getFalsoNegativo());
            verdadeiroPositivoTextBox.Text = "Verdadeiro Positivo: " + Convert.ToString(precisao.getVerdadeiroPositivo());
            verdadeiroNegativoTextBox.Text = "Verdadeiro Negativo: " + Convert.ToString(precisao.getVerdadeiroNegativo());
            RecallTextBox.Text = "Recall: " + Convert.ToString(precisao.getRecall());
            AcurracyTextBox.Text = "Acuracia: " + Convert.ToString(precisao.getAcurracy());

        }           
       

        private double capturaValorTreinamento()
         { 
             double vlT; 
             if (buttonValorTreina50.IsChecked == true) 
             { 
                 vlT = 0.5; 
             } 
             else if (buttonValorTreina75.IsChecked == true) 
             { 
                 vlT = 0.75; 
             } 
             else 
                 vlT = 0.9; 
             return vlT; 
         }

      
        private void buttonInicio_Click(object sender, RoutedEventArgs e)
        {                         
            Frame.Navigate(typeof(Page01));
        }
    }
}

