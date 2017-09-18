using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.DirectoryServices;
using ClassLibrary;
using System.Data.SqlClient;
using System.Data;

namespace AAG
{
    public partial class Site : System.Web.UI.MasterPage
    {
        // PAGE VARIABLES
        DBConnect objDB = new DBConnect();

        // PAGELOAD
        protected void Page_Load(object sender, EventArgs e)
        {
            //if user is not logged in display new request & admin login
            //else display request list & logout
            if (Session["isLoggedIn"] == null || !(bool)Session["isLoggedIn"])
            {
                isLoggedIn(false);
            }
            else
            {
                isLoggedIn(true);
            }

        }


        // LOGIN & LOGOUT 
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            isLoggedIn(true);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openAdvisorNoticeModal();", true);
        }
        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }
        protected void logoutLinkButton_Click(object sender, EventArgs e)
        {
            isLoggedIn(false);
        }
        protected void isLoggedIn(bool isloggedIn)
        {
            Session["isLoggedIn"] = isloggedIn;
            if (isloggedIn)
            {
                requestList.Visible = isloggedIn;
                logout.Visible = isloggedIn;
                newRequest.Visible = !isloggedIn;
                adminLogin.Visible = !isloggedIn;
            }
            else
            {
                newRequest.Visible = !isloggedIn;
                adminLogin.Visible = !isloggedIn;
                requestList.Visible = isloggedIn;
                logout.Visible = isloggedIn;
            }
        }


        //---------------------------------REQUESTS ------------------------------------------

        //CONTACT (SUBMIT & CANCEL)
        protected void btnContactSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand AddContact = new SqlCommand();
            AddContact.CommandType = CommandType.StoredProcedure;
            AddContact.CommandText = "AddContact";

            AddContact.Parameters.AddWithValue("@requesterName", "Beyonce");
            AddContact.Parameters.AddWithValue("@FName", txtContactFirstName.Text);
            AddContact.Parameters.AddWithValue("@LName", txtContactLastName.Text);
            AddContact.Parameters.AddWithValue("@ProTitle", txtContactTitle.Text);
            AddContact.Parameters.AddWithValue("@Email", txtContactEmail.Text);
            AddContact.Parameters.AddWithValue("@Number", txtContactPhone.Text);
            AddContact.Parameters.AddWithValue("@Location", txtContactLocation.Text);
            AddContact.Parameters.AddWithValue("@date", DateTime.Now);

            if (objDB.DoUpdateUsingCmdObj(AddContact) > 0)  // If SQL command executes correctly
            {
                contactSuccess.Visible = true;
                contactError.Visible = false;
                //Re-open modal after postback and clear fields
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openContactModal();", true);
                txtContactFirstName.Text = "";
                txtContactLastName.Text = "";
                txtContactTitle.Text = "";
                txtContactEmail.Text = "";
                txtContactPhone.Text = "";
                txtContactLocation.Text = "";
            }
            else
            {
                contactError.Visible = true;
                contactSuccess.Visible = false;
                //Re-open modal after postback
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openContactModal();", true);
            }
        }

        protected void btnContactCancel_Click(object sender, EventArgs e)
        {
            contactError.Visible = false;
            contactSuccess.Visible = false;
            contactModal.Attributes.Add("class", " modal fade");
        }


        // POLICY (Submit & Cancel)
        protected void btnPolicySubmit_Click(object sender, EventArgs e)
        {
            SqlCommand AddPolicy = new SqlCommand();
            AddPolicy.CommandType = CommandType.StoredProcedure;
            AddPolicy.CommandText = "AddPolicy";
            byte[] sampleBytes = { 1, 45, 89, 90 };

            AddPolicy.Parameters.AddWithValue("@title", policyTitle.Text);
            AddPolicy.Parameters.AddWithValue("@policyType", ddlPolicyType.SelectedIndex);
            AddPolicy.Parameters.AddWithValue("@url", txtPolicyLink.Text);
            AddPolicy.Parameters.AddWithValue("@fileName", txtPolicyFileName.Text);
            AddPolicy.Parameters.AddWithValue("@fileAttachment", sampleBytes);
            AddPolicy.Parameters.AddWithValue("@description", policyDescription.InnerText);

            

            if (objDB.DoUpdateUsingCmdObj(AddPolicy) > 0)  // If SQL command executes successfully
            {
                policySuccess.Visible = true;
                policyError.Visible = false;
                //Re-open modal after postback and clear fields
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openPolicyModal();", true);
                policyTitle.Text = "";
                txtPolicyLink.Text = "";
                txtPolicyFileName.Text = "";
                policyDescription.InnerText = "";
            }

            else
            {
                achievementError.Visible = true;
                achievementSuccess.Visible = false;
                //Re-open modal after postback
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openPolicyModal();", true);
            }
        }

        protected void btnPolicyCancel_Click(object sender, EventArgs e)
        {
            policyError.Visible = false;
            policySuccess.Visible = false;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openAchievementModal();", true);
        }

        // ACHIEVEMENT (Submit & Cancel)
        protected void btnAchievementSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand AddAward = new SqlCommand();
            AddAward.CommandType = CommandType.StoredProcedure;
            AddAward.CommandText = "AddAward";
            byte[] sampleBytes = { 1, 45, 89, 90 };

            AddAward.Parameters.AddWithValue("@FName", txtFirstName.Text);
            AddAward.Parameters.AddWithValue("@LName", txtLastName.Text);
            AddAward.Parameters.AddWithValue("@title", txtAchievementTitle.Text);
            AddAward.Parameters.AddWithValue("@achieveType", ddlAchievementType.SelectedIndex);
            AddAward.Parameters.AddWithValue("@achievDate", tbxAchievementDate.Text);
            AddAward.Parameters.AddWithValue("@url", txtAchievementLink.Text);
            AddAward.Parameters.AddWithValue("@fileName", txtAchievementFileName.Text);
            AddAward.Parameters.AddWithValue("@fileAttachment", sampleBytes);
            AddAward.Parameters.AddWithValue("@description", achievementDescription.InnerText);

            if (objDB.DoUpdateUsingCmdObj(AddAward) > 0)  // If SQL command executes successfully
            {
                achievementSuccess.Visible = true;
                achievementError.Visible = false;
                //Re-open modal after postback and clear fields
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openAchievementModal();", true);
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtAchievementTitle.Text = "";
                tbxAchievementDate.Text = "";
                txtAchievementLink.Text = "";
                txtAchievementFileName.Text = "";
                txtAchievementFile.Text = "";
                achievementDescription.InnerText = "";
            }

            else
            {
                achievementError.Visible = true;
                achievementSuccess.Visible = false;
                //Re-open modal after postback
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openAchievementModal();", true);
            }

        }

        protected void btnAchievementCancel_Click(object sender, EventArgs e)
        {
            achievementError.Visible = false;
            achievementSuccess.Visible = false;
            contactModal.Attributes.Add("class", " modal fade");
        }
       

        // ANNOUNCEMENT 
        protected void btnAnnouncementSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand AddAnnouncement = new SqlCommand();
            AddAnnouncement.CommandType = CommandType.StoredProcedure;
            AddAnnouncement.CommandText = "AddAnnouncement";

            AddAnnouncement.Parameters.AddWithValue("@resourceType", txtAnnouncementTitle.Text);
            AddAnnouncement.Parameters.AddWithValue("@resourceType", txtAnnouncementLink.Text);
            AddAnnouncement.Parameters.AddWithValue("@resourceType", txtAnnouncementFileName.Text);
            AddAnnouncement.Parameters.AddWithValue("@resourceType", txtAnnouncementFile.Text);
            AddAnnouncement.Parameters.AddWithValue("@resourceType", announcementDescription.InnerText);

            objDB.DoUpdateUsingCmdObj(AddAnnouncement);
        }

        // PROFDEV 
        protected void btnProfDevSubmit_Click(object sender, EventArgs e)
        {
            string requesterName = "Ryan"; // going to come from web services
            string proDevTitle = txtProfDevTitle.Text;
            string status = "pending";
            string description = profdevDescription.InnerText;
            string fileName = txtProfDevFile.Text;
            byte [] profDevBytes = { 1, 54, 76, 65 };
            string url = txtProfDevLink.Text;

            ProDevelopment ProDev = new ProDevelopment(requesterName, proDevTitle, status, description, fileName, url, profDevBytes);
            ProDev.insertIntoDB();
        }

        // RESOURCE 
        protected void btnResourceSubmit_Click(object sender, EventArgs e)
        {
            byte[] bytes = { 1, 45, 89, 90 };

            SqlCommand AddResource = new SqlCommand();
            AddResource.CommandType = CommandType.StoredProcedure;
            AddResource.CommandText = "AddResource";

            AddResource.Parameters.AddWithValue("@requesterName", "Ryan");
            AddResource.Parameters.AddWithValue("@title", txtResourceFileName.Text);
            AddResource.Parameters.AddWithValue("@description", resourceDescription.InnerText);
            AddResource.Parameters.AddWithValue("@fileName", txtResourceFileName.Text);
            AddResource.Parameters.AddWithValue("@fileAttachment", bytes);
            AddResource.Parameters.AddWithValue("@url", txtResourceLink.Text);
            AddResource.Parameters.AddWithValue("@resourceType", "Type");

            objDB.DoUpdateUsingCmdObj(AddResource);
        }

        //EVENT (SUBMIT & CANCEL)
        protected void btnEventSubmit_Click(object sender, EventArgs e)
        {
            Event addEvent = new Event("Beyonce", "Event", "Pending", eventDescription.InnerText, txtEventTitle.Text, "Meeting",
                 Convert.ToDateTime(txtEventStart.Text), Convert.ToDateTime(txtEventEnd.Text));
            //SqlCommand AddEvent = new SqlCommand();
            //AddEvent.CommandType = CommandType.StoredProcedure;
            //AddEvent.CommandText = "AddEvent";
            //ddlEventType.SelectedIndex
            //AddEvent.Parameters.AddWithValue("@requesterName", "Beyonce");
            //AddEvent.Parameters.AddWithValue("@title", txtEventTitle.Text);
            //AddEvent.Parameters.AddWithValue("@eventType", "Meeting");
            //AddEvent.Parameters.AddWithValue("@startDate", Convert.ToDateTime(txtEventStart.Text));
            //AddEvent.Parameters.AddWithValue("@endDate", Convert.ToDateTime(txtEventEnd.Text));
            //AddEvent.Parameters.AddWithValue("@description", eventDescription.InnerText);

            if (addEvent.insertintodb())  // If SQL command executes correctly
            {
                eventSuccess.Visible = true;
                eventError.Visible = false;
                //Re-open modal after postback and clear fields
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openEventModal();", true);
                txtEventTitle.Text = "";
                txtEventStart.Text = "";
                txtEventEnd.Text = "";
                eventDescription.InnerText = "";
            }
            else
            {
                eventError.Visible = true;
                eventSuccess.Visible = false;
                //Re-open modal after postback
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openEventModal();", true);
            }
        }

        protected void btnEventCancel_Click(object sender, EventArgs e)
        {
            eventError.Visible = false;
            eventSuccess.Visible = false;
            contactModal.Attributes.Add("class", " modal fade");
            txtEventTitle.Text = "";
            txtEventStart.Text = "";
            txtEventEnd.Text = "";
            eventDescription.InnerText = "";
        }
    }
}
