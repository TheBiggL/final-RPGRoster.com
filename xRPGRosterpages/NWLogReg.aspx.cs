using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RPGRosterpages
{
	public partial class NWLogReg : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void NWRegBtn_Click(object sender, EventArgs e)
		{
			Response.Redirect("NWRegister.aspx");
		}

		protected void NWLogBtn_Click(object sender, EventArgs e)
		{
			Response.Redirect("NWLogin.aspx");
		}
	}
}