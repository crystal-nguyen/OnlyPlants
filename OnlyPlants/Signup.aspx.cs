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
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "Server=127.0.0.1;Port=5432;User Id=postgres;Password=0204999503cN;Database=postgres";
            using (var con = new NpgsqlConnection(connectionString))
            {
                con.Open();
                var sql = "";
                using (var cmd = new NpgsqlCommand(sql, con))
                {
                    var version = cmd.ExecuteScalar().ToString();
                    f_name_tb.Text = version;
                }
            }

        }

        protected void signUp_Click(object sender, EventArgs e)
        {

        }
    }
}