using System;
using System.Collections.Generic;
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
    /// Logique d'interaction pour AddCustomer.xaml
    /// </summary>
    public partial class AddCustomer : Page
    {
        private AgendaContext db = new AgendaContext();
        public AddCustomer()
        {
            InitializeComponent();
        }

        private void BtnSend_Click(object sender, RoutedEventArgs e)
        {
            Customer customer = new Customer()
            {
                Firstname = Firstname.Text,
                Lastname = Lastname.Text,
                Mail = Mail.Text,
                PhoneNumber = PhoneNumber.Text,
                Budget = Convert.ToDecimal(Budget.Text)
            };
            db.Customers.Add(customer);
            db.SaveChanges();
            MessageBox.Show("Vous avez bien ajouté un nouveau Courtier");
        }

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new CustomersList());
        }
    }
}
