using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.UI.HtmlControls;
using Npgsql;

namespace OnlyPlants
{
    public partial class Login : System.Web.UI.Page
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
            try
            {
                // connect to db
                string result = "";
                using (var con = new NpgsqlConnection(connectionString))
                {
                    con.Open();
                    var sql = @"SELECT userid FROM users WHERE login = @username AND password = @pass";
                    using (var cmd = new NpgsqlCommand(sql, con))
                    {
                        cmd.Parameters.AddWithValue("username", username.Text);
                        cmd.Parameters.AddWithValue("pass", password.Text);

                        using (NpgsqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                result = dr.GetInt32(0).ToString();
                            }
                        }
                    }
                    con.Close();

                }

                // redirect to order page when the user successfully logs in
                if (result != "")
                {
                    // remember the user
                    HttpCookie user = new HttpCookie("USER");
                    user.Value = result;
                    Response.Cookies.Add(user);
                    user.Expires = DateTime.Now.AddMinutes(10);
                    Response.Redirect("~/Order");
                }
                else
                {
                    // login error popup
                    username.Text = "";
                    password.Text = "";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "Fail();", true);
                }
            }
            catch { }
        }
    }
}