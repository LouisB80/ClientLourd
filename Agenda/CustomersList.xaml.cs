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
    /// Logique d'interaction pour CustomersList.xaml
    /// </summary>
    public partial class CustomersList : Page
    {
        private CollectionViewSource customerViewSource;
        private AgendaContext db = new AgendaContext();
        public CustomersList()
        {
            InitializeComponent();
            //On vient recuperer les ressources de la page avec FindResource 
            customerViewSource = ((CollectionViewSource)(FindResource("customerViewSource")));

        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            db.Customers.Load();
            customerViewSource.Source = db.Customers.Local;
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            var CurrentCustomer = customerViewSource.View.CurrentItem as Customer;
            var customer = (from c in db.Customers
                            where c.CustomerID == CurrentCustomer.CustomerID
                            select c).SingleOrDefault();
            if(customer != null)
            {
                string message = "Etes-vous sûr de vouloir supprimer ce client?";
                string title = "Supprimer un client";
                MessageBoxButton buttons = MessageBoxButton.YesNo;
                MessageBoxResult result = MessageBox.Show(message, title, buttons);
                if (result == MessageBoxResult.Yes)
                {
                    db.Entry(customer).State = EntityState.Deleted;
                    db.SaveChanges();
                    MessageBox.Show("Suppression terminé");
                }
                else if (result == MessageBoxResult.No)
                {
                    this.NavigationService.Navigate(new CustomersList());
                }
            }           
        }

        private void BtnModify_Click(object sender, RoutedEventArgs e)
        {            
            try
            {
                var CurrentCustomer = customerViewSource.View.CurrentItem as Customer;

                var customer = (from c in db.Customers
                                where c.CustomerID == CurrentCustomer.CustomerID
                                select c).SingleOrDefault();
                if (customer != null)
                {
                    string message = "Etes-vous sûr de vouloir modifier ce client?";
                    string title = "Modifier un client";
                    MessageBoxButton buttons = MessageBoxButton.YesNo;
                    MessageBoxResult result = MessageBox.Show(message, title, buttons);
                    if (result == MessageBoxResult.Yes)
                    {
                        db.Entry(customer).State = EntityState.Modified;
                        db.SaveChanges();
                        MessageBox.Show("Enregistrement terminé");
                    }
                    else if (result == MessageBoxResult.No)
                    {
                        this.NavigationService.Navigate(new CustomersList());
                    }
                }
                else
                {
                    MessageBox.Show("L'élément que vous voulez modifier n'existe pas !");
                }
            }
            catch
            {
                MessageBox.Show("Une erreur est survenue");
            }
        }
    }
}
