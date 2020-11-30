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

        protected void Page_Load(object sender, EventArgs e)
        {
            // fill in order and order_has table

        }

        protected void submit_Click(object sender, EventArgs e)
        {

            //fill in order_has table

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

                foreach (var prod in productInfo)//add to order_has table
                {
                    var sql = @"INSERT INTO order_has VALUES(@productID, @orderID, @quantity)";
                    var cmd = new NpgsqlCommand(sql, con);

                    cmd.Parameters.AddWithValue("productID", prod.productId);
                    cmd.Parameters.AddWithValue("orderID", globalCart.OrderID);
                    cmd.Parameters.AddWithValue("quantity", prod.quantity);

                    totalQuantity += prod.quantity;
                    cmd.ExecuteNonQuery();
                }

                

                //add to order table
                var ordersSQL = @"INSERT INTO orders VALUES(@quantity, @deliveryType, @orderID, @deliveryTime)";
                var cmdOrder = new NpgsqlCommand(ordersSQL, con);

                cmdOrder.Parameters.AddWithValue("quantity", totalQuantity);

                string deliveryMethod = deliveryType();//generate a delivery type 
                cmdOrder.Parameters.AddWithValue("deliveryType", deliveryMethod);

                cmdOrder.Parameters.AddWithValue("orderID", globalCart.OrderID);

                string dayOfDelivery = deliveryDay();//calculate estimated delivery date
                cmdOrder.Parameters.AddWithValue("deliveryTime", dayOfDelivery);

                cmdOrder.ExecuteNonQuery();


                //get the price of each product in the list and add it to the price var
                float price = 0;
                foreach (var prod in productInfo)//get the price from price table using the the productID
                {
                    string priceSQL = @"SELECT price FROM product WHERE productID=@productIDvalue";
                    var cmdPrice = new NpgsqlCommand(priceSQL, con);

                    cmdPrice.Parameters.AddWithValue("productIDvalue", prod.productId);

                    NpgsqlDataReader rdr = cmdPrice.ExecuteReader();
                    while (rdr.Read())//get the price
                    {
                        price += rdr.GetFloat(0);
                    }
                }

                //add to payment table
                var paymentSQL = @"INSERT INTO payment VALUES(@userID, @orderID, @paymentType, @paymentAmount)";
                var cmdPayment = new NpgsqlCommand(paymentSQL, con);

                cmdPayment.Parameters.AddWithValue("userID", totalQuantity);
                cmdPayment.Parameters.AddWithValue("orderID", globalCart.OrderID);
                cmdPayment.Parameters.AddWithValue("paymentType", totalQuantity);//get from payment typeBox Text
                cmdPayment.Parameters.AddWithValue("paymentAmount", price);
                cmdPayment.ExecuteNonQuery();


                con.Close();

            }

            

        }

        public string deliveryType()
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

        public string deliveryDay()
        {
            DateTime orderedDate = DateTime.Now;
            DateTime deliveryDate = orderedDate.AddDays(3);
            string day = deliveryDate.DayOfWeek.ToString();
            return day;
        }
    }
}

