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
using System.Data.Entity;

namespace Agenda
{
    /// <summary>
    /// Logique d'interaction pour AddAppointment.xaml
    /// </summary>
    public partial class AddAppointment : Page
    {
        private AgendaContext db = new AgendaContext();
        public AddAppointment()
        {
            InitializeComponent();
            List<Customer> CustomersList = db.Customers.ToList();
            CustomersComboBox.DataContext = CustomersList;
            List<Broker> BrokersList = db.Brokers.ToList();
            BrokersComboBox.DataContext = BrokersList;
        }

        private void BtnSend_Click(object sender, RoutedEventArgs e)
        {
            Appointment appointment = new Appointment()
            {
                DateHour = DateTime.Parse(dtpStartTime.Text),
                BrokerID = Convert.ToInt32(BrokersComboBox.SelectedValue),
                CustomerID = Convert.ToInt32(CustomersComboBox.SelectedValue),
                Subject = subjectTextBox.Text
            };
            db.Appointments.Add(appointment);
            db.SaveChanges();
            MessageBox.Show("Vous avez bien ajouté un nouveau Rendez-Vous");
        }

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new CustomersList());
        }
    }
}
