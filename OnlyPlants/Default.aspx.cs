using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace OnlyPlants
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string indexhtml = "index.html";
            StreamReader sr = new StreamReader(Server.MapPath(indexhtml));
            string content = sr.ReadToEnd();
            sr.Close();
            index.InnerHtml = content;
        }
    }
}