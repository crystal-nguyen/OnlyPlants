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
        private string connectionString = "Server=127.0.0.1;Port=5432;User Id=postgres;Password=0204999503cN;Database=postgres";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUp_Click(object sender, EventArgs e)
        {
            string result = "";
            using (var con = new NpgsqlConnection(connectionString))
            {
                con.Open();
                var sql = @"SELECT userid FROM users WHERE login = @username";
                using (var cmd = new NpgsqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("username", username_tb.Text);

                    using(NpgsqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            result += dr.GetInt32(0);
                        }
                    }

                }
                con.Close();

            }
            if(result != "")
            {
                
            }

            
        }
    }
}