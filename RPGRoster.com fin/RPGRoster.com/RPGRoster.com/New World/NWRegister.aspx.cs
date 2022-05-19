using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace RPGRoster.com.New_World
{
	public partial class NWRegister : System.Web.UI.Page
	{

		SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
		protected void Page_Load(object sender, EventArgs e)
		{

			if (!IsPostBack)
			{
				Clear();
				if (!String.IsNullOrEmpty(Request.QueryString["id"]))
				{
					int userID = Convert.ToInt32(Request.QueryString["id"]);

					{
						con.Open();
						SqlDataAdapter sqlDa = new SqlDataAdapter("UserViewByID", con);
						sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
						sqlDa.SelectCommand.Parameters.AddWithValue("@USER_ID", userID);
						DataTable dtbl = new DataTable();
						sqlDa.Fill(dtbl);

						hfUserID.Value = userID.ToString();
						NWUsername.Text = dtbl.Rows[0][1].ToString();
						NWPassword.Text = dtbl.Rows[0][2].ToString();
						NWPassword.Attributes.Add("value", dtbl.Rows[0][2].ToString());
						NWPasswordConf.Text = dtbl.Rows[0][2].ToString();
						NWPasswordConf.Attributes.Add("value", dtbl.Rows[0][2].ToString());
						NWEmail.Text = dtbl.Rows[0][3].ToString();
					}
				}
			}

		}


		protected void NWRegBtn_Click(object sender, EventArgs e)
		{
			if (NWUsername.Text == "" || NWPassword.Text == "")
				ErrorMessage.Text = "Please Fill Mandatory Fields";
			else if (NWPassword.Text != NWPasswordConf.Text)
				ErrorMessage.Text = "Try again";
			else

			{
				con.Open();
				SqlCommand sqlCmd = new SqlCommand("UserAddOrEdit", con);
				sqlCmd.CommandType = CommandType.StoredProcedure;
				try
				{
					sqlCmd.Parameters.AddWithValue("@USER_ID", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
					sqlCmd.Parameters.AddWithValue("@USERNAME", NWUsername.Text.Trim());
					sqlCmd.Parameters.AddWithValue("@PASSWORD", NWPassword.Text.Trim());
					//sqlCmd.Parameters.AddWithValue("@PASSWORD", NWPassword.Text.Trim());
					sqlCmd.Parameters.AddWithValue("@EMAIL", NWEmail.Text.Trim());
					sqlCmd.ExecuteNonQuery();
				} catch (Exception ex) { NWUsername.Text = "Username Taken";}
				Clear();
				SuccessMessage.Text = "Submission Successful";
				Response.Redirect("NWLogin.aspx");
			}
		}

		void Clear()
		{
			NWUsername.Text = NWPassword.Text = NWPasswordConf.Text = NWEmail.Text = "";
			hfUserID.Value = "";
			SuccessMessage.Text = ErrorMessage.Text = "";
		}

	}
}