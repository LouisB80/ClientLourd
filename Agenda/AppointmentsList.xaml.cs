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
    /// Logique d'interaction pour AppointmentsList.xaml
    /// </summary>
    public partial class AppointmentsList : Page
    {
        private AgendaContext db = new AgendaContext();
        public AppointmentsList()
        {
            InitializeComponent();
            AppointmentsListDataGrid.ItemsSource = db.Appointments.ToList();
            BrokerComboBox.DataContext = db.Brokers.ToList();
            CustomerComboBox.DataContext = db.Customers.ToList();
        }

        private void BtnModify_Click(object sender, RoutedEventArgs e)
        {
            //On recupère l'objet avec l'ID actuel
            Appointment appointment = db.Appointments.Find(Convert.ToInt32(TxtAppointmentID.Text));
            //Si l'objet est non nul, on créé un autre objet où on insère les modifications
            //puis on insère les modifications dans l'objet.
            if(appointment != null)
            {
                //Création de l'objet avec les infos modifiés
                var newAppointment = new Appointment()
                {
                    AppointmentID = appointment.AppointmentID,
                    BrokerID = Convert.ToInt32(BrokerComboBox.SelectedValue),
                    CustomerID = Convert.ToInt32(CustomerComboBox.SelectedValue),
                    Subject = TxtSubject.Text,
                    DateHour = Convert.ToDateTime(dateHourDatePicker.Text)
                };
                //On insere les données du nouvel objet dans l'ancien
                db.Entry(appointment).CurrentValues.SetValues(newAppointment);
                db.SaveChanges();
                //On rafraichit le dataGrid.
                AppointmentsListDataGrid.ItemsSource = db.Appointments.ToList();
                //On affiche une alerte afin d'informer la modification.
                MessageBox.Show("Le RDV a été modifié");
            }
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            //On recupère l'objet avec l'ID actuel
            Appointment appointment = db.Appointments.Find(Convert.ToInt32(TxtAppointmentID.Text));
            //Si l'objet est non nul, On le supprime puis on actualise le dataGrid avec le db.Appointments.ToList()
            //A la fin, on ouvre une alerte avec le message Suppression terminé.
            if (appointment != null)
            {
                db.Appointments.Remove(appointment);
                db.SaveChanges();
                AppointmentsListDataGrid.ItemsSource = db.Appointments.ToList();
                MessageBox.Show("Suppression terminé");                
            }
        }
    }
}
