using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace NewWorldRoster
{
	public partial class NWLogin : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void NWUserLogin_Click(object sender, EventArgs e)
		{
			{


				{
					SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
					SqlCommand cmd = new SqlCommand("select * from dbo.USERS where USERNAME=@username and PASSWORD=@password", con);
					cmd.Parameters.AddWithValue("@username", NWLogUsername.Text);
					cmd.Parameters.AddWithValue("@password", NWLogPassword.Text);
					SqlDataAdapter sda = new SqlDataAdapter(cmd);
					DataTable dt = new DataTable();
					sda.Fill(dt);
					con.Open();
					int i = cmd.ExecuteNonQuery();
					//con.Close();

					if (dt.Rows.Count > 0)
					{
						Response.Redirect("Redirectform.aspx");
					}
					else
					{
						NWLogError.Text = "Your username and word is incorrect";
						NWLogError.ForeColor = System.Drawing.Color.Red;

					}










					//SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
					//con.Open();
					//SqlCommand sqlCmd = new SqlCommand("select * from UserDetails WHERE USERNAME = @USERNAME AND PASSWORD =@PASSWORD", con);

					//sqlCmd.Parameters.AddWithValue("@USERNAME", NWLogUsername.Text);
					//sqlCmd.Parameters.AddWithValue("@PASSWORD", NWLogPassword.Text);
					//SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
					//DataTable dt = new DataTable();
					//da.Fill(dt);

					//if (dt.Rows.Count > 0)
					//{
					//	Session["username"] = NWLogUsername.Text.Trim();
					//	Response.Redirect("NWTempGuild.aspx");
					//}
					//else { NWLogError.Visible = true; }
				}
			}

		}
	}
}