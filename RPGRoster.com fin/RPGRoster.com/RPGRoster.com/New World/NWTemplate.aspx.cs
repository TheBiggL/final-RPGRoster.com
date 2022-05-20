using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace RPGRoster.com.New_World
{
	public partial class NWTemplate : System.Web.UI.Page
	{
		SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
		protected void Page_Load(object sender, EventArgs e)
		{

			NWLabel1.Text = Session["username"].ToString();

			con.Open();
			//SqlCommand cmd = new SqlCommand("SELECT [USER_TOKEN] From [dbo].[USERS]");
			//cmd.CommandType = System.Data.CommandType.Text;
			//cmd.Connection = con;
			SqlCommand cmd = new SqlCommand("select * from USERS where USERNAME=@username", con);
			cmd.Parameters.AddWithValue("@username", NWLabel1.Text);

			string token = "";

			SqlDataReader reader = cmd.ExecuteReader();
			while (reader.Read())
			{
				token += reader["USER_TOKEN"].ToString();
			}
			con.Close();
			NWPCode.Text = token;
		}

		protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		protected void NWPlayerPic_Click(object sender, EventArgs e)
		{

		}

		protected void NWCName_TextChanged(object sender, EventArgs e)
		{

		}

		protected void NWAHead_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		protected void NWHeadPic_Click(object sender, EventArgs e)
		{

		}

		protected void NWAChest_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		protected void NWChestPic_Click(object sender, EventArgs e)
		{

		}

		protected void NWAHand_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		protected void NWHandPic_Click(object sender, EventArgs e)
		{

		}

		protected void NWALeg_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		protected void NWLegPic_Click(object sender, EventArgs e)
		{

		}

		protected void NWAFoot_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		protected void NWFootPic_Click(object sender, EventArgs e)
		{

		}

		protected void NWShield_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		protected void NWShieldPic_Click(object sender, EventArgs e)
		{

		}

		protected void NWWeapon1_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		protected void NWWeapon1Pic_Click(object sender, EventArgs e)
		{

		}

		protected void NWWeapon2_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		protected void NWWeapon2Pic_Click(object sender, EventArgs e)
		{

		}

		protected void NWAmuletPic_Click(object sender, EventArgs e)
		{

		}

		protected void NWRingPic_Click(object sender, EventArgs e)
		{

		}

		protected void NWEaringPic_Click(object sender, EventArgs e)
		{

		}

		protected void NWBio_TextChanged(object sender, EventArgs e)
		{

		}

		protected void NWViewButton_Click(object sender, EventArgs e)
		{

		}
		protected void NWWeight_SelectedIndexChanged(object sender, EventArgs e)
		{

		}
		protected void NWGS_TextChanged(object sender, EventArgs e)
		{

		}

		protected void GuildButton_Click(object sender, EventArgs e)
		{
			Response.Redirect("NWGuild.aspx");
		}

		protected void NWSubmitButton_Click(object sender, EventArgs e)
		{
			{
				SqlConnection conn = new SqlConnection();
				conn.ConnectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

				SqlCommand cmd = new SqlCommand("TemplateFill", conn);
				cmd.CommandType = CommandType.StoredProcedure;

				cmd.Parameters.Add("@SERVER_NAME", SqlDbType.VarChar, 30);
				cmd.Parameters["@SERVER_NAME"].Value = DropDownList5.SelectedItem.Value;

				cmd.Parameters.Add("@GEAR_SCORE", SqlDbType.VarChar, 5);
				cmd.Parameters["@GEAR_SCORE"].Value = NWGSTextBox.Text;

				cmd.Parameters.Add("@CHAR_NAME", SqlDbType.VarChar, 25);
				cmd.Parameters["@CHAR_NAME"].Value = NWCName.Text;

				cmd.Parameters.Add("@A_HEAD", SqlDbType.VarChar, 10);
				cmd.Parameters["@A_HEAD"].Value = NWAHead.SelectedItem.Value;

				cmd.Parameters.Add("@A_CHEST", SqlDbType.VarChar, 10);
				cmd.Parameters["@A_CHEST"].Value = NWAChest.SelectedItem.Value;

				cmd.Parameters.Add("@A_HAND", SqlDbType.VarChar, 10);
				cmd.Parameters["@A_HAND"].Value = NWAHand.SelectedItem.Value;

				cmd.Parameters.Add("@A_LEGS", SqlDbType.VarChar, 10);
				cmd.Parameters["@A_LEGS"].Value = NWALeg.SelectedItem.Value;

				cmd.Parameters.Add("@A_FEET", SqlDbType.VarChar, 10);
				cmd.Parameters["@A_FEET"].Value = NWAFoot.SelectedItem.Value;

				cmd.Parameters.Add("@SHIELD", SqlDbType.VarChar, 10);
				cmd.Parameters["@SHIELD"].Value = NWShield.SelectedItem.Value;

				cmd.Parameters.Add("@WEAPON1", SqlDbType.VarChar, 15);
				cmd.Parameters["@WEAPON1"].Value = NWWeapon1.SelectedItem.Value;

				cmd.Parameters.Add("@WEAPON2", SqlDbType.VarChar, 15);
				cmd.Parameters["@WEAPON2"].Value = NWWeapon2.SelectedItem.Value;

				cmd.Parameters.Add("@WEIGHT", SqlDbType.VarChar, 10);
				cmd.Parameters["@WEIGHT"].Value = NWWeight.SelectedItem.Value;

				conn.Open();
				cmd.ExecuteNonQuery();
				conn.Close();

				////if (i == -1)
				////{
				////	LiteralSub.Text = "Your email is saved successfully.";
				////}
			}
		}

		}

		

		
	}
