using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace RPGRoster.com.New_World

{
    public partial class NWLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void B1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from [dbo].[USERS] where USERNAME=@USERNAME and PASSWORD=@PASSWORD", con);
            //SqlCommand cmd = new SqlCommand("select * from [dbo].[USERS] where USERNAME=@USERNAME and PASSWORD=@PASSWORD", con);
            cmd.Parameters.AddWithValue("@USERNAME", TextB1.Text);
            cmd.Parameters.AddWithValue("@PASSWORD", TextB2.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("NWTempGuild.aspx");

            }
            else
            {
                NWLab1.Text = "Your username and word is incorrect";
                NWLab1.ForeColor = System.Drawing.Color.Red;

            }


        }
    }
}