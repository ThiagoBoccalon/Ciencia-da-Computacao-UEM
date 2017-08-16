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
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class Page11 : Page
    {      
        public Page11()
        {
            this.InitializeComponent();
        }

        private void buttonStatusContaConfirma_Click(object sender, RoutedEventArgs e)
        {     
            Usuario.dadosUsuario[10] = capturaValor();
            Frame.Navigate(typeof(Page12));
        }

        private string capturaValor()
        {
            string vl;
            if (buttonResidencia1.IsChecked == true)
                vl = "1";
            else if (buttonResidencia2.IsChecked == true)
                vl = "2";
            else if (buttonResidencia3.IsChecked == true)
                vl = "3";
            else
                vl = "4";

            return vl;
        }       
    }
}
