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
        private string connectionString = "Server=127.0.0.1;Port=5432;User Id=postgres;Password=0204999503cN;Database=postgres";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void OnAddToCart(object sender, EventArgs e)
        {

            Button clickedButton = sender as Button;
            int productid = Convert.ToInt32((clickedButton.ID).Remove(0,1));
            //string value = dropdownValue.Value;

            // add the product id to the cart
            Application.Lock();
            ((Cart)Application["Cart"]).ProductList.Add(productid);
            Application.UnLock();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "ShowPopup();", true);
        }
    }
}