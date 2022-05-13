using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace RPGRosterpages
{
	public partial class NWLogin : System.Web.UI.Page
	{
		//private object sqlConn;

		//public string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RPGRoster.com;Integrated Security=True;";

		protected void Page_Load(object sender, EventArgs e)
		{
			NWLogError.Visible = false;
		}

		protected void NWUserLogin_Click(object sender, EventArgs e)
		{
			{
				using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RPGRoster.com;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;")) ;
				{
					//doesn't like double connection maybe
					sqlCon.Open();
					string query = "SELECT COUNT(1) FROM USERS WHERE USERNAME=@USERNAME AND PASSWORD=@PASSWORD";
					SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
					sqlCmd.Parameters.AddWithValue("@USERNAME", NWLogUsername.Text.Trim());
					sqlCmd.Parameters.AddWithValue("@PASSWORD", NWLogPassword.Text.Trim());
					int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
					if (count == 1)
					{
						Session["username"] = NWLogUsername.Text.Trim();
						Response.Redirect("NWTempGuild.aspx");
					}
					else { NWLogError.Visible = true;  }
				}
			}

		}
	}
}