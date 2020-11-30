using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Npgsql;

namespace OnlyPlants
{

    public partial class Checkout : System.Web.UI.Page
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

        // add divs based on number of produts in the order
        private void add_divs(List<int> prods)
        {
            for (int i = 0; i < prods.Count; i++)
            {
                string prodName = "";
                using (var con = new NpgsqlConnection(connectionString))
                {
                    con.Open();
                    var sql = @"select name from products where productid=@prodid";
                    using (var cmd = new NpgsqlCommand(sql, con))
                    {
                        cmd.Parameters.AddWithValue("prodid", prods.ElementAt(i));

                        using (NpgsqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                prodName = dr.GetString(0);
                            }
                        }

                    }
                    con.Close();
                }
                System.Web.UI.HtmlControls.HtmlGenericControl newdivs = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                newdivs.Attributes["class"] = "mbr-fonts-style panel-text display-7";
                newdivs.InnerText = prodName;
                add_div.Controls.Add(newdivs);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            // show cart preview if the cart isn't empty
            if (((Cart)Application["Cart"]).ProductList.Count != 0)
            {
                Cart globalCart = (Cart)Application["Cart"];
                hi.Visible = true;
                add_divs(globalCart.ProductList);
            }

        }

        protected void submit_Click(object sender, EventArgs e)
        {

            //connect to the db
            using (var con = new NpgsqlConnection(connectionString))
            {
                con.Open();
                Application.Lock();
                Cart globalCart = new Cart();
                globalCart = (Cart)Application["Cart"];
                Application.UnLock();
                var productList = globalCart.ProductList;
                var productInfo = productList.GroupBy(x => x).Select(x => new { productId = x.Key, quantity = x.Count() });
                int totalQuantity = 0;
                double price = 0;

                //get total quantity
                foreach (var prod in productInfo)
                {
                    totalQuantity += prod.quantity;
                }

                // generate new order id
                var newOrderID = @"select max(orderid) from order_has";
                using (var cmd = new NpgsqlCommand(newOrderID, con))
                {
                    using (NpgsqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            globalCart.OrderID = dr.GetInt32(0) + 1;

                        }
                    }

                }
                try
                {
                    //add to order table
                    var ordersSQL = @"INSERT INTO orders(quantity, deliverytype, orderid, deliverytime) VALUES(@quantity, @deliveryType, @orderID, @deliveryTime)";
                    using (var cmdOrder = new NpgsqlCommand(ordersSQL, con))
                    {
                        cmdOrder.Parameters.AddWithValue("quantity", totalQuantity);

                        string deliveryMethod = deliveryType();//generate a delivery type 
                        cmdOrder.Parameters.AddWithValue("deliveryType", deliveryMethod);

                        cmdOrder.Parameters.AddWithValue("orderID", globalCart.OrderID);

                        double dayOfDelivery = deliveryDay();//calculate estimated delivery date
                        cmdOrder.Parameters.AddWithValue("deliveryTime", dayOfDelivery);

                        cmdOrder.ExecuteNonQuery();
                    }

                    //add to order_has table and determine price
                    foreach (var prod in productInfo)
                    {
                        var sql = @"INSERT INTO order_has(productid, orderid, quantity) VALUES(@productID, @orderID, @quantity)";
                        using (var cmd = new NpgsqlCommand(sql, con))
                        {
                            cmd.Parameters.AddWithValue("productID", prod.productId);
                            cmd.Parameters.AddWithValue("orderID", globalCart.OrderID);
                            cmd.Parameters.AddWithValue("quantity", prod.quantity);

                            cmd.ExecuteNonQuery();
                        }
                        //get the price of each product in the list and add it to the price var
                        string priceSQL = @"SELECT price FROM products WHERE productID=@productIDvalue";
                        using (var cmdPrice = new NpgsqlCommand(priceSQL, con))
                        {
                            cmdPrice.Parameters.AddWithValue("productIDvalue", prod.productId);

                            NpgsqlDataReader rdr = cmdPrice.ExecuteReader();
                            while (rdr.Read())//get the price
                            {
                                price += rdr.GetDouble(0);
                            }
                            rdr.Close();
                        }
                    }

                    //add to payment table
                    var paymentSQL = @"INSERT INTO payment(userid, orderid, paymenttype, paymentamount) VALUES(@userID, @orderID, @paymentType, @paymentAmount)";
                    using (var cmdPayment = new NpgsqlCommand(paymentSQL, con))
                    {
                        cmdPayment.Parameters.AddWithValue("userID", totalQuantity);
                        cmdPayment.Parameters.AddWithValue("orderID", globalCart.OrderID);
                        cmdPayment.Parameters.AddWithValue("paymentType", totalQuantity);//get from payment typeBox Text
                        cmdPayment.Parameters.AddWithValue("paymentAmount", price);
                        cmdPayment.ExecuteNonQuery();
                    }

                    // success
                    ((Cart)Application["Cart"]).ProductList.Clear();
                    ((Cart)Application["Cart"]).QuantityList.Clear();
                    name_tb.Text = "";
                    card_tb.Text = "";
                    email_tb.Text = "";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "Success();", true);

                }
                catch { }


                con.Close();

            }


        }

        private string deliveryType()
        {
            string delivery = "";
            Random r = new Random();
            int choose = r.Next(1, 4);
            if (choose == 1)
            {
                delivery = "USPS";
            }
            else if (choose == 2)
            {
                delivery = "DHL";
            }
            else if (choose == 3)
            {
                delivery = "UPS";
            }
            else
            {
                delivery = "FedEx";
            }
            return delivery;
        }

        private double deliveryDay()
        {
            DateTime orderedDate = DateTime.Now;
            DateTime deliveryDate = orderedDate.AddDays(3);
            double day = Convert.ToDouble(deliveryDate.DayOfWeek);
            return day;
        }
    }
}

