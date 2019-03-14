namespace Agenda
{
    using System;
    using System.Data.Entity;
    using System.Linq;

    public class AgendaContext : DbContext
    {
        // Votre contexte a été configuré pour utiliser une chaîne de connexion « Agenda » du fichier 
        // de configuration de votre application (App.config ou Web.config). Par défaut, cette chaîne de connexion cible 
        // la base de données « Agenda.Agenda » sur votre instance LocalDb. 
        // 
        // Pour cibler une autre base de données et/ou un autre fournisseur de base de données, modifiez 
        // la chaîne de connexion « Agenda » dans le fichier de configuration de l'application.
        public AgendaContext()
            : base("name=Agenda")
        {
        }
        public DbSet<Appointment> Appointments { get; set; }
        public DbSet<Broker> Brokers { get; set; }
        public DbSet<Customer> Customers { get; set; }
    }    
}