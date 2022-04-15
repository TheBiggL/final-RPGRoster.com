using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace RPGRosterpages
{
	public partial class NWImageUpload : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

        }//https://docs.microsoft.com/en-us/troubleshoot/developer/webapps/aspnet/development/upload-file-to-web-site

        protected void btnUpload_Click(object sender, EventArgs e)
		{
            string strFileName;
            string strFilePath;
            string strFolder;
            strFolder = Server.MapPath("./");
            // Retrieve the name of the file that is posted.
            strFileName = oFile.PostedFile.FileName;
            strFileName = Path.GetFileName(strFileName);
            if (oFile.Value != "")
            {
                // Create the folder if it does not exist.
                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }
                // Save the uploaded file to the server.
                strFilePath = strFolder + strFileName;
                if (File.Exists(strFilePath))
                {
                    lblUploadResult.Text = strFileName + " already exists on the server!";
                }
                else
                {
                    oFile.PostedFile.SaveAs(strFilePath);
                    lblUploadResult.Text = strFileName + " has been successfully uploaded.";
                }
            }
            else
            {
                lblUploadResult.Text = "Click 'Browse' to select the file to upload.";
            }
            // Display the result of the upload.
            frmConfirmation.Visible = true;
        }
	}
}