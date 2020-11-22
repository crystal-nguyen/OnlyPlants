using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace OnlyPlants
{
    public partial class Order : System.Web.UI.Page
    {
        private string connectionString = "Server=127.0.0.1;Port=5432;User Id=postgres;Password=0204999503cN;Database=postgres";
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie user = Request.Cookies["USER"];
            if(user.Value != "")
            {
                int userid = Convert.ToInt32(user.Value);
                string payment_amt = "", name = "", quantity = "", orderid = "";
                using (var con = new NpgsqlConnection(connectionString))
                {
                    con.Open();
                    var sql = @"select pa.paymentamount, pr.name, o.quantity, " +
                        @"o.orderid from payment pa, products pr, order_has o " +
                        @"where pa.orderid=o.orderid and pa.userid = @uid " +
                        @"and o.productid=pr.productid";
                    using (var cmd = new NpgsqlCommand(sql, con))
                    {
                        cmd.Parameters.AddWithValue("uid", userid);

                        using (NpgsqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                payment_amt = dr.GetDouble(0).ToString();
                                name = dr.GetString(1);
                                quantity = dr.GetInt32(2).ToString();
                                orderid = dr.GetInt32(3).ToString();
                            }
                        }

                    }
                    con.Close();
                }
                order1.InnerText = "Order No. " + orderid;
                lblOrder1.Text = quantity + " x " + name + "\t\t\t\t\t\t\t" + payment_amt;
            }
            else{
                // no orders
            }
        }
    }
}