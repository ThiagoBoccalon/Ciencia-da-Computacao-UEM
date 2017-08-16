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
   
    public sealed partial class Page02 : Page
    {
        
        public Page02()
        {
            this.InitializeComponent();
        }

        private void buttonStatusContaConfirma_Click(object sender, RoutedEventArgs e)
        {           
            Usuario.dadosUsuario[1] = capturaValor();
            Frame.Navigate(typeof(Page03));
        }

        private string capturaValor()
        {
            string vl;
            if (buttonPeriodoConta1.IsChecked == true)
                vl = "A21";
            else if (buttonPeriodoConta2.IsChecked == true)
                vl = "A22";
            else if (buttonPeriodoConta3.IsChecked == true)
                vl = "A23";
            else if (buttonPeriodoConta4.IsChecked == true)
                vl = "A24";
            else
                vl = "A25";
            return vl;
        }                
    }
}
