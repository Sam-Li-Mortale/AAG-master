using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ClassLibrary;
using System.Data.SqlClient;

namespace AcademicAdvisingGroup
{
    public partial class AdminEvents : System.Web.UI.Page
    {
        DBConnect objDB = new DBConnect();
        SqlCommand objCommand = new SqlCommand();
        string strSQL;
        DataSet myDS;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //todo
        }

        protected void btnDeleteEvent_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openCalendarEventDeleteModal();", true);
        }
        
        protected void btnUpdateEvent_Click(object sender, EventArgs e)
        {
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "UpdateEvent";

            SqlParameter inputParameter = new SqlParameter("@id", int.Parse(txtID.Text));
            objCommand.Parameters.Add(inputParameter);
            inputParameter = new SqlParameter("@title", txtEventTitle.Text);
            objCommand.Parameters.Add(inputParameter);
            inputParameter = new SqlParameter("@startDate", Convert.ToDateTime(txtEventStart.Text));
            objCommand.Parameters.Add(inputParameter);
            inputParameter = new SqlParameter("@endDate", Convert.ToDateTime(txtEventEnd.Text));
            objCommand.Parameters.Add(inputParameter);
            inputParameter = new SqlParameter("@eventType", "Conference"); //ddlEventType.SelectedValue
            objCommand.Parameters.Add(inputParameter);
            inputParameter = new SqlParameter("@descr", eventDescription.InnerHtml);
            objCommand.Parameters.Add(inputParameter);
            if (objDB.DoUpdateUsingCmdObj(objCommand) > 0)
            {
                lblEventSuccess.Text = "SUCCESS: The event information has been updated.";
                eventSuccess.Visible = true;
                eventError.Visible = false;
            }
            else
            {
                eventError.Visible = true;
                eventSuccess.Visible = false;
            }
        }

        protected void btnEventSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand AddEvent = new SqlCommand();
            AddEvent.CommandType = CommandType.StoredProcedure;
            AddEvent.CommandText = "AddEvent";
            
            AddEvent.Parameters.AddWithValue("@requesterName", "Beyonce");
            AddEvent.Parameters.AddWithValue("@title", txtAddEventTitle.Text);
            AddEvent.Parameters.AddWithValue("@eventType", "Meeting"); //ddlEventType.SelectedIndex
            AddEvent.Parameters.AddWithValue("@startDate", Convert.ToDateTime(txtAddEventStart.Text));
            AddEvent.Parameters.AddWithValue("@endDate", Convert.ToDateTime(txtAddEventEnd.Text));
            AddEvent.Parameters.AddWithValue("@description", addEventDescr.InnerText);

            if (objDB.DoUpdateUsingCmdObj(AddEvent) > 0)  // If SQL command executes correctly
            {
                eventSuccess.Visible = true;
                eventError.Visible = false;
                txtEventTitle.Text = "";
                txtEventStart.Text = "";
                txtEventEnd.Text = "";
                eventDescription.InnerText = "";
            }
            else
            {
                eventError.Visible = true;
                eventSuccess.Visible = false;
            }
        }
    }
}