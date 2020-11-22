﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace OnlyPlants
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string checkouthtml = "checkout.html";
            StreamReader sr = new StreamReader(Server.MapPath(checkouthtml));
            string content = sr.ReadToEnd();
            sr.Close();
            checkout.InnerHtml = content;
        }
    }
}