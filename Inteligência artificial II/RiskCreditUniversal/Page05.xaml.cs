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

// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=234238

namespace RiskCreditUniversal
{
   
    public sealed partial class Page05 : Page
    {
        public Page05()
        {
            this.InitializeComponent();
        }

        private void buttonStatusContaConfirma_Click(object sender, RoutedEventArgs e)
        {            
            Usuario.dadosUsuario[4] = capturaValor();
            Frame.Navigate(typeof(Page06));
        }

        private string capturaValor()
        {
            string vl;
            if (buttonValorEmprestimo1.IsChecked == true)
                vl = "A51";
            else if (buttonValorEmprestimo2.IsChecked == true)
                vl = "A52";
            else if (buttonValorEmprestimo3.IsChecked == true)
                vl = "A53";
            else if (buttonValorEmprestimo4.IsChecked == true)
                vl = "A43";
            else if (buttonValorEmprestimo5.IsChecked == true)
                vl = "A54";
            else if (buttonValorEmprestimo6.IsChecked == true)
                vl = "A55";
            else
                vl = "A56";
            return vl;
        }
    }
}
