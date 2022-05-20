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
	public partial class NWRegisterNew : System.Web.UI.Page
	{
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
		{


           


        }

		protected void btnRegister_Click(object sender, EventArgs e)
		{
            if (NWUsernames.Text != "" && NWPasswords.Text != "" && NWPasswordConfs.Text != "" && NWEmails.Text != "")  //validating the fields whether the fields or empty or not  
            {
                if (NWPasswords.Text.ToString().Trim().ToLower() == NWPasswordConfs.Text.ToString().Trim().ToLower()) //validating Password textbox and confirm password textbox is match or unmatch    
                    try
                    {

                        string UserName = NWUsernames.Text;
                        string Password = Cryptography.Encrypt(NWPasswords.Text.ToString());
                        string Email = Cryptography.Encrypt(NWEmails.Text.ToString());// Passing the Password to Encrypt method and the method will return encrypted string and stored in Password variable.  
                        con.Open();
                        SqlCommand insert = new SqlCommand("insert into USERS(USERNAME,PASSWORD,EMAIL)values('" + UserName + "','" + Password + "','" + Email + "')", con);
                        insert.ExecuteNonQuery();
                    }
                    catch (Exception ex) { ErrorMessage.Text = "Username Taken"; }
                    con.Close();
                    SuccessMessage.Text = ("Record inserted successfully");
                    Response.Redirect("NWLoginNew.aspx");
                }
                else
                {
                    ErrorMessage.Text = ("Something is wrong.");  //showing the error message if password and confirm password doesn't match  
                }
            }
        }
	}

	
