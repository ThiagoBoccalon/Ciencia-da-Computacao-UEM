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
    public sealed partial class Page03 : Page
    {      
        public Page03()
        {
            this.InitializeComponent();
        }


        private void buttonStatusContaConfirma_Click(object sender, RoutedEventArgs e)
        {            
            Usuario.dadosUsuario[2] = capturaValor();
            Frame.Navigate(typeof(Page04));
        }

        private string capturaValor()
        {
            string vl;
            if (buttonHistoricoCredito1.IsChecked == true)
                vl = "A30";
            else if (buttonHistoricoCredito2.IsChecked == true)
                vl = "A31";
            else if (buttonHistoricoCredito3.IsChecked == true)
                vl = "A32";
            else if (buttonHistoricoCredito4.IsChecked == true)
                vl = "A33";
            else
                vl = "A34";
            return vl;
        }        
    }
}
