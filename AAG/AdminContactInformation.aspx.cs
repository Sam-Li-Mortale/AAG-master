using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary;
using System.Data.SqlClient;

namespace AcademicAdvisingGroup
{
    public partial class AdminContactInformation : System.Web.UI.Page
    {
        DBConnect objDB = new DBConnect();
        SqlCommand objCommand = new SqlCommand();
        string strSQL;
        DataSet myDS;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayContactInfo();
            }
            
        }

        protected void DisplayContactInfo()
        {
            String strSQL = "SELECT * FROM Contact";
            myDS = objDB.GetDataSet(strSQL);
            gvAdminContact.DataSource = myDS;
            gvAdminContact.DataBind();
        }
        protected void btnContactSubmit_Click(object sender, EventArgs e)
        {
            Contact contact = new Contact("Beyonce", "Event", "Pending", "Tiara loves Beyonceeeee!", txtContactFirstName.Text, 
                txtContactLastName.Text, txtContactTitle.Text, txtContactEmail.Text, txtContactPhone.Text, txtContactLocation.Text);

            if (contact.insertIntoDB() > 0)
            {
                lblSucces.Text = "SUCCESS: The contact information item has been added.";
                contactSuccess.Visible = true;
                contactError.Visible = false;
            }
            else
            {
                contactError.Visible = true;
                contactSuccess.Visible = false;
            }

            DisplayContactInfo();
        }

        protected void gvAdminContact_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            String strSQL = "SELECT * FROM Contact";
            myDS = objDB.GetDataSet(strSQL);
            GridViewRow row = gvAdminContact.SelectedRow;
            int rowIndex = int.Parse(e.CommandArgument.ToString());

            if (e.CommandName == "EditContact")
            {
                txtID.Text = objDB.GetField("ConID", rowIndex).ToString();
                txtFName.Text = objDB.GetField("ContactFirstName", rowIndex).ToString();
                txtLName.Text = objDB.GetField("ContactLastName", rowIndex).ToString();
                txtTitle.Text = objDB.GetField("ProfessionalTitle", rowIndex).ToString();
                txtEmail.Text = objDB.GetField("Email", rowIndex).ToString();
                txtNumber.Text = objDB.GetField("PhoneNumber", rowIndex).ToString();
                txtLocation.Text = objDB.GetField("Location", rowIndex).ToString();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openContactEditModal();", true);
            }
            else
            {
                txtID.Text = objDB.GetField("ConID", rowIndex).ToString();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openContactDeleteModal();", true);
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "UpdateContact"; 

            SqlParameter inputParameter = new SqlParameter("@id", int.Parse(txtID.Text));                     
            objCommand.Parameters.Add(inputParameter);
            inputParameter = new SqlParameter("@FName", txtFName.Text);
            objCommand.Parameters.Add(inputParameter);
            inputParameter = new SqlParameter("@LName", txtLName.Text);                  
            objCommand.Parameters.Add(inputParameter);
            inputParameter = new SqlParameter("@ProTitle", txtTitle.Text);
            objCommand.Parameters.Add(inputParameter);
            inputParameter = new SqlParameter("@Email", txtEmail.Text);
            objCommand.Parameters.Add(inputParameter);
            inputParameter = new SqlParameter("@Number", txtNumber.Text);
            objCommand.Parameters.Add(inputParameter);
            inputParameter = new SqlParameter("@Location", txtLocation.Text);
            objCommand.Parameters.Add(inputParameter);
            if (objDB.DoUpdateUsingCmdObj(objCommand) > 0)
            {
                lblSucces.Text = "SUCCESS: The contact information item has been updated.";
                contactSuccess.Visible = true;
                contactError.Visible = false;
            }
            else
            {
                contactError.Visible = true;
                contactSuccess.Visible = false;
            }

            DisplayContactInfo();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "DeleteContact";
            SqlParameter inputParameter = new SqlParameter("@ConID", txtID.Text);
            objCommand.Parameters.Add(inputParameter);
            if (objDB.DoUpdateUsingCmdObj(objCommand) > 0)
            {
                lblSucces.Text = "SUCCESS: The contact information item has been deleted.";
                contactSuccess.Visible = true;
                contactError.Visible = false;
            }
            else
            {
                contactError.Visible = true;
                contactSuccess.Visible = false;
            }

            DisplayContactInfo();
        }

        protected void ClearMessages()
        {
            contactSuccess.Visible = false;
            contactError.Visible = false;
        }
    }
}