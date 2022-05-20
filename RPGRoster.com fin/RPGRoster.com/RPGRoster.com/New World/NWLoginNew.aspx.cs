using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows;
using System.Data.SqlClient;
using System.Configuration;

namespace RPGRoster.com.New_World
{
    
    public partial class NWLoginNew : System.Web.UI.Page
	{
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        
            

		protected void B1s_Click(object sender, EventArgs e)
		{
            {
                string Password = "";
                bool IsExist = false;
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from USERS where USERNAME='" + TextB1s.Text + "'", con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Password = sdr.GetString(2);  //get the user password from db if the user name is exist in that.  
                    IsExist = true;
                }
                con.Close();
                if (IsExist)  //if record exis in db , it will return true, otherwise it will return false  
                {
                    if (Cryptography.Decrypt(Password).Equals(TextB2s.Text))
                    {
                        NWLab1ss.Text=("Login Success");
                        Session["username"] = TextB1s.Text.Trim();
                        Response.Redirect("NWTempGuild.aspx");
                    }
                    else
                    {
                        NWLab1ss.Text=("Password is wrong!");
                    }

                }
                else  //showing the error message if user credential is wrong  
                {
                    NWLab1ss.Text=("Please enter the valid credentials");
                }

            }
        }
	}
   }
