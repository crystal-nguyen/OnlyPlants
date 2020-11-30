using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace OnlyPlants
{
    public partial class Products : System.Web.UI.Page
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

        }
        protected void OnAddToCart(object sender, EventArgs e)
        {

            Button clickedButton = sender as Button;
            int productid = Convert.ToInt32((clickedButton.ID).Remove(0,1));

            // add the product id to the cart
            Application.Lock();
            ((Cart)Application["Cart"]).ProductList.Add(productid);
            Application.UnLock();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "ShowPopup();", true);
        }
    }
}