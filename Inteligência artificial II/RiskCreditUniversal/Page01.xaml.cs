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
    public sealed partial class Page01 : Page
    {
        public Page01()
        {
            this.InitializeComponent();
        }

        

        private void buttonStatusContaConfirma_Click(object sender, RoutedEventArgs e)
        {                        
            Usuario.dadosUsuario[0] = capturaValor();
            Frame.Navigate(typeof(Page02));
        }

        private string capturaValor()
        {
            string vl;
            if (buttonStatusConta1.IsChecked == true)
                vl = "A11";
            else if (buttonStatusConta2.IsChecked == true)
                vl = "A12";
            else if (buttonStatusConta3.IsChecked == true)
                vl = "A13";
            else
                vl = "A14";
            return vl;
        }                 
    }
}
