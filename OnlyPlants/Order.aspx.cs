using System;
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
        protected void add_divs(int num_orders)
        {
            for(int i = 0; i < num_orders; i++)
            {
                System.Web.UI.HtmlControls.HtmlGenericControl newdivs = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                newdivs.Attributes["class"] = "mbr-fonts-style panel-text display-7";
                newdivs.InnerText = i.ToString();
                add_div.Controls.Add(newdivs);
            }
        }
        private string connectionString = "Server=127.0.0.1;Port=5432;User Id=postgres;Password=0204999503cN;Database=postgres";
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie user = Request.Cookies["USER"];
            if(user != null)
            {
                int userid = Convert.ToInt32(user.Value);
                double payment_amt = 0.0; 
                string name = "";
                int quantity = 0;
                int orderid = 0;
                HistoryOrder hist_order = new HistoryOrder();
                using (var con = new NpgsqlConnection(connectionString))
                {
                    con.Open();
                    // get total amount from most recent order
                    var totalPayment = @" select paymentamount, orderid from payment " +
                        @"where orderid in (select max(orderid) from payment" +
                        @" where userid=@uid)";
                    using (var cmd = new NpgsqlCommand(totalPayment, con))
                    {
                        cmd.Parameters.AddWithValue("uid", userid);

                        using (NpgsqlDataReader dr = cmd.ExecuteReader())
                        {
                            
                            // get the most recent order for the user
                            while (dr.Read())
                            {
                                payment_amt = dr.GetDouble(0);
                                orderid = dr.GetInt32(1);
                            }
                        }

                    }
                    hist_order.OrderID = orderid;
                    hist_order.Total = payment_amt;

                    // get the products and quantity
                    var productsQuantity = @"select order_has.quantity,products.name "+
                        @"from order_has,products where orderid = @oid and order_has.productid=products.productid";
                    using (var cmd = new NpgsqlCommand(productsQuantity, con))
                    {
                        cmd.Parameters.AddWithValue("oid", orderid);
                        using (NpgsqlDataReader dr = cmd.ExecuteReader())
                        {

                            // get the most recent order for the user
                            while (dr.Read())
                            {
                                hist_order.addProduct(dr.GetInt32(0), dr.GetString(1));
                            }
                        }

                    }
                    con.Close();
                }
                if (orderid == 0)
                {
                    order_text.InnerText = "No Recent Orders :(";
                }
                else
                {
                    add_divs(Convert.ToInt32(quantity));
                    hi.Visible = true;
                    order1.InnerText = "Order No. " + orderid;
                    //lblOrder1.Text = quantity + " x " + name + "\t\t\t\t\t\t\t" + payment_amt;
                }
            }
            else{
                order_text.InnerText = "No Recent Orders :(";
            }
        }
    }
}