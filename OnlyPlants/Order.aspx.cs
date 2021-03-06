﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Npgsql;

namespace OnlyPlants
{
    public partial class Order : System.Web.UI.Page
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



        //add divs based on number of products in the order
        protected void add_divs(HistoryOrder hist_order)
        {
            for(int i = 0; i < hist_order.Products.Count; i++)
            {
                System.Web.UI.HtmlControls.HtmlGenericControl newdivs = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                newdivs.Attributes["class"] = "mbr-fonts-style panel-text display-7";
                newdivs.InnerText = "Qty: " + hist_order.Products.ElementAt(i).Quantity + " x " + hist_order.Products.ElementAt(i).ItemName;
                add_div.Controls.Add(newdivs);
            }
            System.Web.UI.HtmlControls.HtmlGenericControl total_div = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            total_div.Attributes["class"] = "mbr-fonts-style panel-text display-7";
            total_div.InnerText = "Total: $" + hist_order.Total;
            add_div.Controls.Add(total_div);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //if the user is logge in, show their most recent order
            HttpCookie user = Request.Cookies["USER"];
            if(user != null)
            {
                int userid = Convert.ToInt32(user.Value);
                double payment_amt = 0.0; 
                int orderid = 0;
                HistoryOrder hist_order = new HistoryOrder();

                try
                {
                    using(var con = new NpgsqlConnection(connectionString))
                    {
                        con.Open();
                        // get total amount from most recent order
                        var totalPayment = @" select paymentamount, orderid from payment " +
                            @"where orderid in (select max(orderid) from payment" +
                            @" where userid=@uid)";
                        using(var cmd = new NpgsqlCommand(totalPayment, con))
                        {
                            cmd.Parameters.AddWithValue("uid", userid);

                            using(NpgsqlDataReader dr = cmd.ExecuteReader())
                            {
                                // get the most recent order for the user
                                while(dr.Read())
                                {
                                    payment_amt = dr.GetDouble(0);
                                    orderid = dr.GetInt32(1);
                                }
                            }

                        }
                        hist_order.OrderID = orderid;
                        hist_order.Total = payment_amt;
                        if(orderid == 0)
                        {
                            order_text.InnerText = "No Recent Orders :(";
                        }
                        else
                        {
                            // if there is a recent order, query the most recent
                            var productsQuantity = @"select order_has.quantity,products.name " +
                           @"from order_has,products where orderid = @oid and order_has.productid=products.productid";
                            using(var cmd = new NpgsqlCommand(productsQuantity, con))
                            {
                                cmd.Parameters.AddWithValue("oid", orderid);
                                using(NpgsqlDataReader dr = cmd.ExecuteReader())
                                {

                                    // get the items in the order and add to a list of products (product names and quantity)
                                    while(dr.Read())
                                    {
                                        hist_order.addProduct(dr.GetInt32(0), dr.GetString(1));
                                    }
                                }

                            }

                            //show the most recent order
                            add_divs(hist_order);
                            order_text.InnerText = "Most Recent Order";
                            hi.Visible = true;
                            order1.InnerText = "Order #" + orderid;
                        }
                        con.Close();
                    }
                }
                catch { }
            }
            else{
                order_text.InnerText = "Couldnt Fetch Order History - Not Logged In :(";
            }
        }
    }
}