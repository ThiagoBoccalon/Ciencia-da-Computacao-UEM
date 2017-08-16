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
    public sealed partial class Page04 : Page
    {     
        public Page04()
        {
            this.InitializeComponent();
        }

        private void buttonStatusContaConfirma_Click(object sender, RoutedEventArgs e)
        {
            Usuario.dadosUsuario[3] = capturaValor();
            Frame.Navigate(typeof(Page05));
        }

        private string capturaValor()
        {
            string vl;
            if (buttonFinalidade1.IsChecked == true)
                vl = "A40";
            else if (buttonFinalidade2.IsChecked == true)
                vl = "A41";
            else if (buttonFinalidade3.IsChecked == true)
                vl = "A42";
            else if (buttonFinalidade4.IsChecked == true)
                vl = "A43";
            else if (buttonFinalidade5.IsChecked == true)
                vl = "A45";
            else if (buttonFinalidade6.IsChecked == true)
                vl = "A46";
            else if (buttonFinalidade7.IsChecked == true)
                vl = "A47";
            else if (buttonFinalidade8.IsChecked == true)
                vl = "A48";
            else if (buttonFinalidade9.IsChecked == true)
                vl = "A49";
            else
                vl = "A410";

            return vl;
        }        
    }
}
