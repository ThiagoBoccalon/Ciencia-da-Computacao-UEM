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
    public sealed partial class Page09 : Page
    {     
        public Page09()
        {
            this.InitializeComponent();
        }

        private void buttonStatusContaConfirma_Click(object sender, RoutedEventArgs e)
        {           
            Usuario.dadosUsuario[8] = capturaValor();
            Frame.Navigate(typeof(Page10));
        }

        private string capturaValor()
        {
            string vl;
            if (buttonStatusPessoal1.IsChecked == true)
                vl = "A91";
            else if (buttonStatusPessoal2.IsChecked == true)
                vl = "A92";
            else if (buttonStatusPessoal3.IsChecked == true)
                vl = "A93";
            else if (buttonStatusPessoal4.IsChecked == true)
                vl = "A94";
            else
                vl = "A95";

            return vl;
        }       
    }
}
