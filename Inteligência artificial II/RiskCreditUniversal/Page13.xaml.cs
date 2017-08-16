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
    public sealed partial class Page13 : Page
    {        
        public Page13()
        {
            this.InitializeComponent();
        }

        private void buttonStatusContaConfirma_Click(object sender, RoutedEventArgs e)
        {     
            Usuario.dadosUsuario[12] = capturaValor();
            Frame.Navigate(typeof(Page14));
        }

        private string capturaValor()
        {
            string vl;
            if (buttonIdade1.IsChecked == true)
                vl = "A131";
            else if (buttonIdade2.IsChecked == true)
                vl = "A132";
            else if (buttonIdade3.IsChecked == true)
                vl = "A133";
            else if (buttonIdade4.IsChecked == true)
                vl = "A134";
            else if (buttonIdade5.IsChecked == true)
                vl = "A135";
            else
                vl = "A136";

            return vl;
        }       
    }
}
