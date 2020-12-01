using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
using System.Web.Security;

namespace OnlyPlants
{
    public partial class AdminLogin : System.Web.UI.Page
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

        protected void submit_Click(object sender, EventArgs e)
        {
            string user = username.Text;
            string pass = password.Text;
            int result = 0;
            using (var con = new NpgsqlConnection(connectionString))
            {
                con.Open();
                string adminsCmd = @"select userid from admin where userid in "+
                    @"(select userid from users where login=@user and password=@pass)";
                using (var cmd = new NpgsqlCommand(adminsCmd, con))
                {
                    cmd.Parameters.AddWithValue("user", user);
                    cmd.Parameters.AddWithValue("pass", pass);
                    using (NpgsqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            result = dr.GetInt32(0);
                        }
                    }
                }
                con.Close();
            }

            // correct admin login
            if (result != 0)
            {
                FormsAuthentication.RedirectFromLoginPage(user, false);
            }
            else
            {
                username.Text = "";
                password.Text = "";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "Fail();", true);
            }
        }
    }
}