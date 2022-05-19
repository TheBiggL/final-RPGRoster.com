using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RPGRoster.com.New_World
{
	public partial class NWTempGuild : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void NWGuild_Click(object sender, EventArgs e)
		{
			Response.Redirect("NWGuild.aspx");
		}

		protected void NWTemplate_Click(object sender, EventArgs e)
		{
			Response.Redirect("NWTemplate.aspx");
		}
	}
}