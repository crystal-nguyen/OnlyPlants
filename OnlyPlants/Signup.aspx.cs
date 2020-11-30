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

        protected void signUp_Click(object sender, EventArgs e)
        {
            string result = "";
            try {
                using(var con = new NpgsqlConnection(connectionString))
                {
                    // get the userid 
                    con.Open();
                    var sql = @"SELECT userid FROM users WHERE login = @username";
                    using(var cmd = new NpgsqlCommand(sql, con))
                    {
                        cmd.Parameters.AddWithValue("username", username_tb.Text);

                        using(NpgsqlDataReader dr = cmd.ExecuteReader())
                        {
                            while(dr.Read())
                            {
                                result = dr.GetInt32(0).ToString();
                            }
                        }
                    }
                    con.Close();
                }

                //user doesn't exist
                if (result == "")
                {
                    try
                    {
                        using (var con = new NpgsqlConnection(connectionString))
                        {
                            con.Open();
                            int new_userid = 0;
                            // get max user id and generate new userid
                            var maxid = @"select max(userid) from users";
                            using (var cmd = new NpgsqlCommand(maxid, con))
                            {
                                using (NpgsqlDataReader dr = cmd.ExecuteReader())
                                {
                                    while (dr.Read())
                                    {
                                        new_userid = dr.GetInt32(0) + 1;

                                    }
                                }
                            }

                            // insert into user table
                            var insert = @"insert into users(userid, firstname, lastname, login, password) " +
                                @"values (@userid, @fname, @lname, @login, @pass)";
                            using (var cmd = new NpgsqlCommand(insert, con))
                            {
                                cmd.Parameters.AddWithValue("userid", new_userid);
                                cmd.Parameters.AddWithValue("fname", f_name_tb.Text);
                                cmd.Parameters.AddWithValue("lname", l_name_tb.Text);
                                cmd.Parameters.AddWithValue("login", username_tb.Text);
                                cmd.Parameters.AddWithValue("pass", pass_tb.Text);
                                cmd.ExecuteNonQuery();
                            }

                            //insert into customer table
                            var customer = @"insert into customer(userid, address, email, dateofbirth) " +
                                @"values(@userid, @addy, @email, @dob)";
                            using (var cmd = new NpgsqlCommand(customer, con))
                            {
                                cmd.Parameters.AddWithValue("userid", new_userid);
                                cmd.Parameters.AddWithValue("addy", add1_tb.Text + add2_tb.Text);
                                cmd.Parameters.AddWithValue("email", email_tb.Text);
                                cmd.Parameters.AddWithValue("dob", bday_tb.Text);
                                cmd.ExecuteNonQuery();

                            }
                            con.Close();
                        }
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "AccountCreated();", true);
                    }
                    catch { }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "UserExists();", true);
                }
            }
            catch { }
        }
    }
}