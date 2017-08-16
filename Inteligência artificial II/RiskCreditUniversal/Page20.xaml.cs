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
    public sealed partial class Page20 : Page
    {
        Usuario usuario = new Usuario();
        public Page20()
        {
            this.InitializeComponent();
        }

        private void buttonStatusContaConfirma_Click(object sender, RoutedEventArgs e)
        {
            
            Usuario.dadosUsuario[19] = capturaValor();
            if (usuario.resultadoUsuario())
                Frame.Navigate(typeof(PageEmprestimoSim));
            else
                Frame.Navigate(typeof(PageEmprestimoNao));
        
        }

        private string capturaValor()
        {
            string vl;
            if (buttonEstrangeiro1.IsChecked == true)
                vl = "A201";
            else
                vl = "A202";


            return vl;
        }        
    }
}
