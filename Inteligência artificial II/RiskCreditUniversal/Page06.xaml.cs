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
   
    public sealed partial class Page06 : Page
    {       
        public Page06()
        {
            this.InitializeComponent();
        }

        private void buttonStatusContaConfirma_Click(object sender, RoutedEventArgs e)
        {
            Usuario.dadosUsuario[5] = capturaValor();
            Frame.Navigate(typeof(Page07));
        }

        private string capturaValor()
        {
            string vl;
            if (buttonContaPoupanca1.IsChecked == true)
                vl = "A61";
            else if (buttonContaPoupanca2.IsChecked == true)
                vl = "A62";
            else if (buttonContaPoupanca3.IsChecked == true)
                vl = "A63";
            else if (buttonContaPoupanca4.IsChecked == true)
                vl = "A64";
            else
                vl = "A65";
            return vl;
        }        
    }
}
