﻿using System;
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
            //hi test
            // test 5
            // tst 6
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            // should redirct to order hi
            Response.Redirect("~/Checkout");
        }
    }
}