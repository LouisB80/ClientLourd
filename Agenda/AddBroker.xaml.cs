using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Agenda
{
    /// <summary>
    /// Logique d'interaction pour AddBroker.xaml
    /// </summary>
    public partial class AddBroker : Page
    {
        private AgendaContext db = new AgendaContext();
        public AddBroker()
        {
            InitializeComponent();
        }

        private void BtnSend_Click(object sender, RoutedEventArgs e)
        {
            Broker broker = new Broker()
            {
                Firstname = firstnameTextBox.Text,
                Lastname = lastnameTextBox.Text,
                Mail = mailTextBox.Text,
                PhoneNumber = phoneNumberTextBox.Text
            };
            db.Brokers.Add(broker);
            db.SaveChanges();
            MessageBox.Show("Vous avez bien ajouté un nouveau Courtier");
        }

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new CustomersList());
        }
    }
}
