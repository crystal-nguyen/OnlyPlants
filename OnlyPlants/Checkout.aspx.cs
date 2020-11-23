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
        private string connectionString = "Server=127.0.0.1;Port=5432;User Id=postgres;Password=0204999503cN;Database=postgres";

        protected void Page_Load(object sender, EventArgs e)
        {
            // fill in order and order_has table

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            //fill in order table

            using (var con = new NpgsqlConnection(connectionString))
            {
                con.Open();
                Application.Lock();
                Cart globalCart = new Cart();
                globalCart = (Cart) Application["Cart"];
                Application.UnLock();
                var sql = @"INSERT INTO orders VALUES(@quantity, @deliveryType, @orderID, @deliveryTime)";
                 var cmd = new NpgsqlCommand(sql, con);

              
                 cmd.ExecuteNonQuery();
                con.Close();

            }

            //fill in order_has table//////////

            using (var con = new NpgsqlConnection(connectionString))
            {
                con.Open();
                Application.Lock();
                Cart globalCart = new Cart();
                globalCart = (Cart)Application["Cart"];
                Application.UnLock();
                var productList = globalCart.ProductList;
                var quantityList = globalCart.QuantityList;
                var productInfo = productList.GroupBy(x => x).Select(x => new { productId = x.Key, quantity = x.Count() });
                int totalQuantity = 0;

                foreach (var prod in productInfo){
                    var sql = @"INSERT INTO order_has VALUES(@productID, @orderID, @quantity)";
                    var cmd = new NpgsqlCommand(sql, con);

                    cmd.Parameters.AddWithValue("productID", prod.productId);
                    cmd.Parameters.AddWithValue("orderID", globalCart.OrderID);
                    cmd.Parameters.AddWithValue("quantity", prod.productId);
                    totalQuantity += prod.quantity;
                    cmd.ExecuteNonQuery();
                }
               /*for (int i = 0; i < productList.Count(); i++)
                {
                    var sql = @"INSERT INTO order_has VALUES(@productID, @orderID, @quantity)";
                    var cmd = new NpgsqlCommand(sql, con);

                    cmd.Parameters.AddWithValue("productID", productList[i]);
                    cmd.Parameters.AddWithValue("orderID", globalCart.OrderID);
                    cmd.Parameters.AddWithValue("quantity", quantityList[i]);
                    cmd.ExecuteNonQuery();
                }*/
                con.Close();




            }

        }
    }
}