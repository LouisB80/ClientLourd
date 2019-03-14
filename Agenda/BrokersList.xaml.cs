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
    public partial class BrokersList : Page
    {
        private CollectionViewSource brokerViewSource;
        private AgendaContext db = new AgendaContext();

        public BrokersList()
        {
            InitializeComponent();
            brokerViewSource = ((CollectionViewSource)(FindResource("brokerViewSource")));
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            db.Brokers.Load();
            brokerViewSource.Source = db.Brokers.Local;            
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            var CurrentBroker = brokerViewSource.View.CurrentItem as Broker;
            var broker = (from b in db.Brokers
                            where b.BrokerID == CurrentBroker.BrokerID
                            select b).SingleOrDefault();

            if (broker != null)
            {
                string message = "Etes-vous sûr de vouloir supprimer ce courtier?";
                string title = "Supprimer un courtier";
                MessageBoxButton buttons = MessageBoxButton.YesNo;
                MessageBoxResult result = MessageBox.Show(message, title, buttons);
                if (result == MessageBoxResult.Yes)
                {
                    db.Entry(broker).State = EntityState.Deleted;
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
                var CurrentBroker = brokerViewSource.View.CurrentItem as Broker;
                var broker = (from b in db.Brokers
                                where b.BrokerID == CurrentBroker.BrokerID
                                select b).SingleOrDefault();
                if (broker != null)
                {
                    string message = "Etes-vous sûr de vouloir modifier ce courtier?";
                    string title = "Modifier un courtier";
                    MessageBoxButton buttons = MessageBoxButton.YesNo;
                    MessageBoxResult result = MessageBox.Show(message, title, buttons);
                    if (result == MessageBoxResult.Yes)
                    {
                        db.Entry(broker).State = EntityState.Modified;
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
