using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace OnlyPlants
{
    public partial class Seeds : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string seedshtml = "seeds.html";
            StreamReader sr = new StreamReader(Server.MapPath(seedshtml));
            string content = sr.ReadToEnd();
            sr.Close();
            seeds.InnerHtml = content;
        }
    }
}