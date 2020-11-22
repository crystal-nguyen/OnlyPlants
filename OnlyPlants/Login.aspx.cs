using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.UI.HtmlControls;

namespace OnlyPlants
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login");
        }

        protected void plants_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Plants");
        }
        protected void seeds_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Seeds");
        }
        protected void pots_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pots");
        }
        protected void checkout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Checkout");
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            
        }
        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Signup");
        }
    }
}