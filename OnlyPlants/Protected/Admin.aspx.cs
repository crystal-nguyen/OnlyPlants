using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace OnlyPlants
{
    public partial class Admin : System.Web.UI.Page
    {
        private static string Host = "onlyplants-db.postgres.database.azure.com";
        private static string User = "onlyplants@onlyplants-db";
        private static string DBname = "onlyplants";
        private static string Password = "password!0";
        private static string Port = "5432";

        private string connectionString = String.Format(
                    "Server={0};Username={1};Database={2};Port={3};Password={4};SSLMode=Prefer",
                    Host,
                    User,
                    DBname,
                    Port,
                    Password);
        protected void add_divs(List<HistoryOrder> hist_order)
        {
            for (int i = 0; i < hist_order.Count; i++)
            {
                System.Web.UI.HtmlControls.HtmlGenericControl newdivs = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                newdivs.Attributes["class"] = "mbr-fonts-style panel-text display-7";
                newdivs.InnerText = "Order # " + hist_order.ElementAt(i).OrderID + " ... $" + hist_order.ElementAt(i).Total;
                add_div.Controls.Add(newdivs);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            List<HistoryOrder> orders = new List<HistoryOrder>();
            using (var con = new NpgsqlConnection(connectionString))
            {
                con.Open();
                // get total amount from most recent order
                var totalPayment = @"select o.orderid, paymentamount from orders o, payment p where o.orderid=p.orderid";
                using (var cmd = new NpgsqlCommand(totalPayment, con))
                {
                    using (NpgsqlDataReader dr = cmd.ExecuteReader())
                    {
                        // get the most recent order for the user
                        while (dr.Read())
                        {
                            orders.Add(new HistoryOrder(dr.GetInt32(0), dr.GetDouble(1)));
                        }
                    }

                }
                con.Close();
            }
            add_divs(orders);
        }


    }
}