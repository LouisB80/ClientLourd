namespace Agenda.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class First : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Appointments",
                c => new
                    {
                        AppointmentID = c.Int(nullable: false, identity: true),
                        DateHour = c.DateTime(nullable: false),
                        Subject = c.String(nullable: false),
                        BrokerID = c.Int(nullable: false),
                        CustomerID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.AppointmentID)
                .ForeignKey("dbo.Brokers", t => t.BrokerID, cascadeDelete: true)
                .ForeignKey("dbo.Customers", t => t.CustomerID, cascadeDelete: true)
                .Index(t => t.BrokerID)
                .Index(t => t.CustomerID);
            
            CreateTable(
                "dbo.Brokers",
                c => new
                    {
                        BrokerID = c.Int(nullable: false, identity: true),
                        Firstname = c.String(nullable: false, maxLength: 50),
                        Lastname = c.String(nullable: false, maxLength: 50),
                        Mail = c.String(nullable: false, maxLength: 100),
                        PhoneNumber = c.String(nullable: false, maxLength: 10),
                    })
                .PrimaryKey(t => t.BrokerID);
            
            CreateTable(
                "dbo.Customers",
                c => new
                    {
                        CustomerID = c.Int(nullable: false, identity: true),
                        Firstname = c.String(nullable: false, maxLength: 50),
                        Lastname = c.String(nullable: false, maxLength: 50),
                        Mail = c.String(nullable: false, maxLength: 100),
                        PhoneNumber = c.String(nullable: false, maxLength: 10),
                        Budget = c.Decimal(nullable: false, precision: 18, scale: 2),
                    })
                .PrimaryKey(t => t.CustomerID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Appointments", "CustomerID", "dbo.Customers");
            DropForeignKey("dbo.Appointments", "BrokerID", "dbo.Brokers");
            DropIndex("dbo.Appointments", new[] { "CustomerID" });
            DropIndex("dbo.Appointments", new[] { "BrokerID" });
            DropTable("dbo.Customers");
            DropTable("dbo.Brokers");
            DropTable("dbo.Appointments");
        }
    }
}
