using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Web.UI.WebControls;
using ClassLibrary;

namespace AcademicAdvisingGroup
{
    public partial class AdminAchievements : System.Web.UI.Page
    {
        DBConnect objDB = new DBConnect();
        SqlCommand objCommand = new SqlCommand();

        // Show unapproved Achievements from DB in gridview (Pageload/DisplayResources) 
        // 
        //




        // Call FillGV function to populate gridview
        protected void Page_Load(object sender, EventArgs e)
        {
            FillGV();
        }

        // Fills GV with data from DB
        // Only select 'unapproved' requests from DB
        public void FillGV()
        {
            DataSet myDS = objDB.GetDataSet("SELECT * FROM Achievement"); // Change select

            gvAchievements.DataSource = myDS;
            gvAchievements.DataBind();
        }

        // Submits the currently worked on request. Runs the AchievementUpdate SP to update approval status and any edits made
        protected void btnAchievementSubmit_Click(object sender, EventArgs e)
        {
            byte[] byteArray = { 1, 2, 2, 2, 2, 2 }; // Sample file data, Change this
            Achievement objAchiev = new Achievement("Allan", "RequesterTitle", "pending", achievementDescription.InnerText, ddlAchievementType.SelectedItem.ToString(), txtFirstName.Text, txtLastName.Text, txtAchievementFileName.Text, txtAchievementLink.Text, byteArray, DateTime.Now);

            /*if (objAchiev.insertIntoDB() > 0 && txtAchievementFileName.Text != "")
            {
                lblSuccess.Text = "SUCCESS: The resource has been added to the system.";
                resourceSuccess.Visible = true;
                resourceError.Visible = false;
            }
            else
            {
                resourceError.Visible = true;
                resourceError.Visible = false;
            }*/

            FillGV();
        }

        // Cancels edits being made and clears the form
        protected void btnAchievementCancel_Click(object sender, EventArgs e)
        {
            // Close modal and clear form values
        }



        // What are these 2 functions for????
        protected void gvAdminResources_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvAchievements_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //String strSQL = "SELECT * FROM Contact";
            //myDS = objDB.GetDataSet(strSQL);
            //GridViewRow row = gvAdminContact.SelectedRow;
            //int rowIndex = int.Parse(e.CommandArgument.ToString());

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
            //else
            //{
            //    txtID.Text = objDB.GetField("ConID", rowIndex).ToString();
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openDeleteModal();", true);
            //}
        }
    }
}