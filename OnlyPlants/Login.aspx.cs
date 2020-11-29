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
        private string connectionString = "Server=127.0.0.1;Port=5432;User Id=postgres;Password=0204999503cN;Database=postgres";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submit_Click(object sender, EventArgs e)
        {
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
                            result += dr.GetInt32(0).ToString();
                        }
                    }

                }
                con.Close();

            }
            if (result != null)
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
                // wrong login
            }
        }
    }
}