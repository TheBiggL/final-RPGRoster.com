using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace RPGRoster.com.New_World
{
	public partial class NWGuild : System.Web.UI.Page
	{
		SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
		protected void Page_Load(object sender, EventArgs e)
		{
			//if (!Page.IsPostBack)
			//{
			//	SetInitialRow();
			//}
		}

		protected void GSearch_Click(object sender, EventArgs e)
		{
			con.Open();
			SqlCommand cmd = new SqlCommand("select * from TEMPLATE where USER_TOKEN = '" + txtgsearch.Text + "'", con);
			SqlDataReader dr = cmd.ExecuteReader();
			if (dr.Read())
			{
				Cname.Text = dr["CHAR_NAME"].ToString();
				Sname.Text = dr["SERVER_NAME"].ToString();
				GS.Text = dr["GEAR_SCORE"].ToString();
				CWeight.Text = dr["WEIGHT"].ToString();
				Wep1.Text = dr["WEAPON1"].ToString();
				Wep2.Text = dr["WEAPON2"].ToString();
				ShieldS.Text = dr["SHIELD"].ToString();
			}
			else
			{
				GError.Text = "Nope";
			}
		}

		protected void TempGo_Click(object sender, EventArgs e)
		{
			Response.Redirect("NWTemplate.aspx");
		}
        
  //      private void AddNewRowToGrid()
  //      {
  //          int rowIndex = 0;
  //          if (ViewState["CurrentTable"] != null)
  //          {
  //              DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
  //              DataRow drCurrentRow = null;
  //              if (dtCurrentTable.Rows.Count > 0)
  //              {
  //                  for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
  //                  {
  //                      //extract the TextBox values  
  //                      TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("txt1");
  //                      TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("txt2");
  //                      TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("txt3");
  //                      TextBox box4 = (TextBox)Gridview1.Rows[rowIndex].Cells[4].FindControl("txt4");
  //                      TextBox box5 = (TextBox)Gridview1.Rows[rowIndex].Cells[5].FindControl("txt5");
  //                      TextBox box6 = (TextBox)Gridview1.Rows[rowIndex].Cells[6].FindControl("txt6");
  //                      TextBox box7 = (TextBox)Gridview1.Rows[rowIndex].Cells[7].FindControl("txt7");
  //                      // TextBox box8 = (TextBox)Gridview1.Rows[rowIndex].Cells[8].FindControl("txt8");

  //                      drCurrentRow = dtCurrentTable.NewRow();

  //                      drCurrentRow["RowNumber"] = i + 1;
  //                      dtCurrentTable.Rows[i - 1]["Column1"] = box1.Text;
  //                      dtCurrentTable.Rows[i - 1]["Column2"] = box2.Text;
  //                      dtCurrentTable.Rows[i - 1]["Column3"] = box3.Text;
  //                      dtCurrentTable.Rows[i - 1]["Column4"] = box4.Text;
  //                      dtCurrentTable.Rows[i - 1]["Column5"] = box5.Text;
  //                      dtCurrentTable.Rows[i - 1]["Column6"] = box6.Text;
  //                      dtCurrentTable.Rows[i - 1]["Column7"] = box7.Text;
  //                      //dtCurrentTable.Rows[i - 1]["Column8"] = box8.Text;
  //                      rowIndex++;
  //                  }
  //                  dtCurrentTable.Rows.Add(drCurrentRow);
  //                  ViewState["CurrentTable"] = dtCurrentTable;
  //                  Gridview1.DataSource = dtCurrentTable;
  //                  Gridview1.DataBind();
  //              }
  //          }
  //          else
  //          {
  //              Response.Write("ViewState is null");
  //          }
  //          //Set Previous Data on Postbacks  
  //          SetPreviousData();
  //      }
  //      private void SetPreviousData()
  //      {
  //          int rowIndex = 0;
  //          if (ViewState["CurrentTable"] != null)
  //          {
  //              DataTable dt = (DataTable)ViewState["CurrentTable"];
  //              if (dt.Rows.Count > 0)
  //              {
  //                  for (int i = 0; i < dt.Rows.Count; i++)
  //                  {
  //                      TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("txt1");
  //                      TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("txt2");
  //                      TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("txt3");
  //                      TextBox box4 = (TextBox)Gridview1.Rows[rowIndex].Cells[4].FindControl("txt4");
  //                      TextBox box5 = (TextBox)Gridview1.Rows[rowIndex].Cells[5].FindControl("txt5");
  //                      TextBox box6 = (TextBox)Gridview1.Rows[rowIndex].Cells[6].FindControl("txt6");
  //                      TextBox box7 = (TextBox)Gridview1.Rows[rowIndex].Cells[7].FindControl("txt7");
  //                      //TextBox box8 = (TextBox)Gridview1.Rows[rowIndex].Cells[8].FindControl("txt8");

  //                      box1.Text = dt.Rows[i]["Column1"].ToString();
  //                      box2.Text = dt.Rows[i]["Column2"].ToString();
  //                      box3.Text = dt.Rows[i]["Column3"].ToString();
  //                      box4.Text = dt.Rows[i]["Column4"].ToString();
  //                      box5.Text = dt.Rows[i]["Column5"].ToString();
  //                      box6.Text = dt.Rows[i]["Column6"].ToString();
  //                      box7.Text = dt.Rows[i]["Column7"].ToString();
  //                      //box8.Text = dt.Rows[i]["Column8"].ToString();
  //                      rowIndex++;
  //                  }
  //              }
  //          }
  //      }
  //      //On page load add below code so that it will bind initial rows of grid view

  //      private void SetInitialRow()
  //      {
  //          DataTable dt = new DataTable();
  //          DataRow dr = null;
  //          dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
  //          dt.Columns.Add(new DataColumn("Column1", typeof(string)));
  //          dt.Columns.Add(new DataColumn("Column2", typeof(string)));
  //          dt.Columns.Add(new DataColumn("Column3", typeof(string)));
  //          dt.Columns.Add(new DataColumn("Column4", typeof(string)));
  //          dt.Columns.Add(new DataColumn("Column5", typeof(string)));
  //          dt.Columns.Add(new DataColumn("Column6", typeof(string)));
  //          dt.Columns.Add(new DataColumn("Column7", typeof(string)));
  //          dt.Columns.Add(new DataColumn("Column8", typeof(string)));
  //          dr = dt.NewRow();
  //          dr["RowNumber"] = 1;
  //          dr["Column1"] = string.Empty;
  //          dr["Column2"] = string.Empty;
  //          dr["Column3"] = string.Empty;
  //          dr["Column4"] = string.Empty;
  //          dr["Column5"] = string.Empty;
  //          dr["Column6"] = string.Empty;
  //          dr["Column7"] = string.Empty;
  //          dr["Column8"] = string.Empty;
  //          dt.Rows.Add(dr);
  //          //Store the DataTable in ViewState  
  //          ViewState["CurrentTable"] = dt;
  //          Gridview1.DataSource = dt;
  //          Gridview1.DataBind();
  //      }
  //      protected void ButtonAdd_Click(object sender, EventArgs e)
  //      {
           
  //          AddNewRowToGrid();
  //      }
  //      protected void Gridview1_SelectedIndexChanged(object sender, EventArgs e)
		//{

		//}
	}
}