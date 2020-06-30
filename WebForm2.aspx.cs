using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace Assignment
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        string cs = WebConfigurationManager.ConnectionStrings["VotingDataBase"].ConnectionString;
        SqlConnection conn;
        SqlDataReader reader;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Choice_Click(object sender, EventArgs e)
        {
            LoginButtonPanel.Visible = false;
            SignupButtonPanel.Visible = false;
            LoginPanel.Visible = true;
        }

        protected void Signup_Choice_Click(object sender, EventArgs e)
        {
            LoginButtonPanel.Visible = false;
            SignupButtonPanel.Visible = false;
            SignupPanel.Visible = true;
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            //string cs = WebConfigurationManager.ConnectionStrings["VotingDataBase"].ConnectionString;
            string v_username = usernameLogin.Text;
            string v_password = passwordLogin.Text;
            conn = new SqlConnection(cs);
            string query = "Select v_username from Voter where v_username = '" + v_username +
                "' AND v_password = '" + v_password + "'";
            cmd = new SqlCommand(query, conn);
            string result = null;
            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    if (reader.Read())
                    {
                        result = reader.GetString(0);
                        //    Response.Write(result);
                        if ((result.ToLower()).Equals(v_username.ToLower()))
                        {
                            Application["v_username"] = v_username;
                            if ((Application["v_username"]) is null)
                            {
                                Response.Redirect("~/WebForm2.aspx");

                               
                            }
                            else
                            {
                                Response.Redirect("~/Default.aspx");
                            }
                        }
                    }
                }
                else
                {
                    Label10.Text = "*Username or Password incorrect";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
            finally
            {
                conn.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("In Signup<br>");
            usernameLogin.Enabled = false;
            passwordLogin.Enabled = false;
            string fname = tbVfname.Text;
            string lname = tbLname.Text;
            string username = tbVusername.Text;
            string password = tbVpassword.Text;
            string address = tbVaddress.Text;
            string phone = tbVphone.Text;
            string query;
            conn = new SqlConnection(cs);

            try
            {
                query = "Select v_username from Voter where v_username = '" + username + "'";
                cmd = new SqlCommand(query, conn);
                conn.Open();
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    Label9.Text = "Username already exist, Please choose a unique username";
                }
                else
                {

                    query = "INSERT INTO Voter " +
                        "(v_username, v_password, v_Fname, v_Lname, v_address, v_phone) " +
                        "VALUES " +
                        "(" + "'" + username + "'" + "," + "'" + password + "'" + "," + "'" + fname + "'" + "," + "'" + lname + "'" + "," + "'" + address + "'" + "," + "'" + phone + "'" + ")";
                    cmd = new SqlCommand(query, conn);
                    int rowsInserted = cmd.ExecuteNonQuery();
                    if (rowsInserted > 0)
                    {
                        Label9.Text = "Account created.";
                    }
                    else
                    {
                        Response.Write("In Signup");
                        Label9.Text = "Account not created, check your username.";
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
            finally
            {

            }

        }
    }
}