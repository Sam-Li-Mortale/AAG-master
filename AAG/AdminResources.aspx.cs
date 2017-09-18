using ClassLibrary;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using WFUtilities;

namespace AcademicAdvisingGroup
{
    public partial class AdminResources : System.Web.UI.Page
    {

        DBConnect objDB = new DBConnect();
        SqlCommand objCommand = new SqlCommand();
        DataSet myDS;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayResources();
                ddlResourceType.Items.Add("Powerpoint");
                ddlResourceType.Items.Add("Word Document");
                ddlResourceType.Items.Add("PDF");
            }
        }

        public void DisplayResources()
        {
            String strSQL = "SELECT * FROM Resource";
            myDS = objDB.GetDataSet(strSQL);
            gvAdminResources.DataSource = myDS;
            gvAdminResources.DataBind();
        }

        
        protected void btnResourceSubmit_Click(object sender, EventArgs e) 
        {
            //string[] fileTypes = { ".pdf", ".doc", ".docx", ".xls", ".ppt" };
            //byte[] byteArray = WFUtilities.Data.Serialization.SerializeFile(resourceFile, resourceFile.PostedFile.FileName, fileTypes, "~/");  
            byte[] byteArray = { 1, 2, 2, 2, 2, 2 };

            Resource objResource = new Resource("Ryan", txtResourceFileName.Text, "pending", 
                resourceDescription.InnerText, ddlResourceType.SelectedItem.ToString(), txtResourceFileName.Text, txtResourceLink.Text, byteArray);
            if (objResource.insertIntoDB() > 0 && txtResourceFileName.Text != "")
            {
                lblSuccess.Text = "SUCCESS: The resource has been added to the system.";
                resourceSuccess.Visible = true;
                resourceError.Visible = false;
            }
            else
            {
                resourceError.Visible = true;
                resourceError.Visible = false;
            }


            DisplayResources();
      
        }

        protected void gvAdminResources_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            String strSQL = "SELECT * FROM Contact";
            myDS = objDB.GetDataSet(strSQL);
            GridViewRow row = gvAdminResources.SelectedRow;
            int rowIndex = int.Parse(e.CommandArgument.ToString());

            //if (e.CommandName == "EditContact")
            //{
            //    txtID.Text = objDB.GetField("ConID", rowIndex).ToString();
            //    txtFName.Text = objDB.GetField("ContactFirstName", rowIndex).ToString();
            //    txtLName.Text = objDB.GetField("ContactLastName", rowIndex).ToString();
            //    txtTitle.Text = objDB.GetField("ProfessionalTitle", rowIndex).ToString();
            //    txtEmail.Text = objDB.GetField("Email", rowIndex).ToString();
            //    txtNumber.Text = objDB.GetField("PhoneNumber", rowIndex).ToString();
            //    txtLocation.Text = objDB.GetField("Location", rowIndex).ToString();
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openEditModal();", true);
            //}
            if (e.CommandName == "EditResource")
            {
                //txtID.Text = objDB.GetField("ConID", rowIndex).ToString();
                ScriptManager.RegisterStartupScript(this, GetType(), "modal", "openDeleteModal();", true);
            }
        }
    }
}