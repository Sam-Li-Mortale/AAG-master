using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Globalization;
using System.Threading;
using System.Threading.Tasks;
using System.Text;
using ClassLibrary;


namespace AcademicAdvisingGroup
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        DBConnect objDB = new DBConnect();
        SqlCommand objCommand = new SqlCommand();
        DataSet myDS;
        String RequesterName;
        String RequestTitle;
        String RequestStatus;
        String RequestDescription;
        int RequestID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataSet ds = objDB.GetDataSet("SELECT RequestID, Title as 'Request Category', RequesterName as 'Submitter', CreationDateTime as 'Date Submitted'  FROM Requests WHERE RequestStatus = 'pending'");
                gvPendingRequest.DataSource = ds;
                gvPendingRequest.DataBind();


                //    DataTable dt = ds.Tables[0];
                //    StringBuilder html = new StringBuilder();

                //    html.Append("<table class=\"dt-requests table table-bordered table-hover\">");
                //    html.Append("<thead>");
                //    html.Append("<tr>");

                //    foreach (DataColumn column in dt.Columns)
                //    {
                //        html.Append("<th>");
                //        html.Append(column.ColumnName);
                //        html.Append("</th>");
                //    }
                //    html.Append("</tr>");

                //    foreach (DataRow row in dt.Rows)
                //    {
                //        html.Append("<tr>");
                //        foreach (DataColumn column in dt.Columns)
                //        {
                //            html.Append("<td>");
                //            html.Append(row[column.ColumnName]);
                //            html.Append("</td>");

                //        }

                //        html.Append("<td><a class=\"btn btn-cherry\" button type=\"submit\"   onClick=\"btnOpenModal_Click\" runat=\"server\"  href=\"#\" data-toggle=\"modal\" data-target=\"#viewModal\">View</a></td>");
                //        html.Append("</tr>");
                //    }

                //    html.Append("</thead>");
                //    html.Append("</table>");

                //    PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            }
        }





        protected void btnOpenModal_Click(object sender, EventArgs e)
        {

        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {

        }

        ///////////////////////////////////////File Functions////////////////////////////////////////////



        public void ExportGridToExcel(GridView grid, string filename, HttpResponse response)
        {

            response.Clear();
            response.Charset = "";

            response.ContentType = "application/vnd.ms-excel";
            response.AddHeader("content-disposition", "attachment;filename=" + filename + ".xls");

            StringWriter sw = new System.IO.StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            grid.AllowPaging = false;
            grid.AllowSorting = false;
            grid.RenderControl(htw);
            response.Write(sw.ToString());
            response.End();
        }


        //Method to put file into database from drive

        public static void databaseFilePut(string varFilePath)
        {
            byte[] file;
            using (var stream = new FileStream(varFilePath, FileMode.Open, FileAccess.Read))
            {
                using (var reader = new BinaryReader(stream))
                {
                    file = reader.ReadBytes((int)stream.Length);
                }
            }
            //          using (var varConnection = Locale.sqlConnectOneTime(Locale.sqlDataConnectionDetails))
            //using (var sqlWrite = new SqlCommand("INSERT INTO Raporty (RaportPlik) Values(@File)", varConnection))
            //{
            //    sqlWrite.Parameters.Add("@File", SqlDbType.VarBinary, file.Length).Value = file;
            //    sqlWrite.ExecuteNonQuery();
            //}
        }

        protected void gvPendingRequest_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            myDS = objDB.GetDataSet("SELECT requestID, Title as 'Request Category', RequesterName as 'Submitter', Description,  CreationDateTime as 'Date Submitted'  FROM Requests WHERE RequestStatus = 'pending'");
            int rowIndex = int.Parse(e.CommandArgument.ToString());


            if (e.CommandName == "View")
            {
                if (objDB.GetField("Request Category", rowIndex).ToString() == "Event")
                {
                    
                    


                    txtEventRequestID.Text = objDB.GetField("RequestID", rowIndex).ToString();
                    txtEventSubmitter.Text = objDB.GetField("Submitter", rowIndex).ToString();
                    txtEventDateSubmitted.Text = objDB.GetField("Date Submitted", rowIndex).ToString();

                    txtEventTitle.Text = objDB.GetField("RequestType", rowIndex).ToString();
                    ddlEventType.SelectedValue = objDB.GetField("EventType", rowIndex).ToString();
                    txtEventStartTime.Text = objDB.GetField("StartTime", rowIndex).ToString();
                    txtEventStartDate.Text = objDB.GetField("StartDate", rowIndex).ToString();
                    txtEventEndTime.Text = objDB.GetField("EndTime", rowIndex).ToString();
                    txtEventEndDate.Text = objDB.GetField("EndDate", rowIndex).ToString();

                   
                   
                    eventDescription.InnerText = objDB.GetField("Description", rowIndex).ToString();
                    

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openEventModal();", true);
                }



                ///////////////////////////////////////


                else if (objDB.GetField("Request Category", rowIndex).ToString() == "Announcement")
                {


                    Announcement announcement = new Announcement(RequesterName, RequestTitle, RequestStatus, RequestDescription, RequestID);

                    


                    txtAnnouncementRequestID.Text = objDB.GetField("RequestID", rowIndex).ToString();
                    txtAnnouncementSubmitter.Text = objDB.GetField("Submitter", rowIndex).ToString();
                    txtAnnouncementDateSubmitted.Text = objDB.GetField("Date Submitted", rowIndex).ToString();

                    txtAnnouncementLink.Text = objDB.GetField("Announcement Link", rowIndex).ToString();
                    txtAnnouncementFileName.Text = objDB.GetField("Filename", rowIndex).ToString();
                    announcementDescription.InnerText = objDB.GetField("Description", rowIndex).ToString();

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openAnnouncementModal();", true);
                }

                ////////////////////////////////////////////




                else if (objDB.GetField("Request Category", rowIndex).ToString() == "Resource")
                {
                    txtResourceRequestID.Text = objDB.GetField("RequestID", rowIndex).ToString(); 
                    txtResourceSubmitter.Text = objDB.GetField("Submitter", rowIndex).ToString();
                    txtResourceDateSubmitted.Text = objDB.GetField("Date Submitted", rowIndex).ToString();

                    txtResourceTitle.Text = objDB.GetField("Request Type", rowIndex).ToString();
                    txtResourceLink.Text = objDB.GetField("LinkURL", rowIndex).ToString();
                    txtResourceFileName.Text = objDB.GetField("Filename", rowIndex).ToString();
                    txtResourceFile.Text = objDB.GetField("FileAttachement", rowIndex).ToString();
                    txtResourceLink.Text = objDB.GetField("Resource Link", rowIndex).ToString();

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openResourceModal();", true);

                }

                else if (objDB.GetField("Request Category", rowIndex).ToString() == "Achievement")
                {
                    txtAchievementRequestID.Text = objDB.GetField("RequestID", rowIndex).ToString();                    
                    txtAchievementSubmitter.Text = objDB.GetField("Submitter", rowIndex).ToString();
                    txtAchievementDateSubmitted.Text = objDB.GetField("Date Submitted", rowIndex).ToString();

                    txtAchievementTitle.Text = objDB.GetField("Request Type", rowIndex).ToString();
                    txtAchievementLink.Text = objDB.GetField("LinkAttachment", rowIndex).ToString();
                    txtAchievementFileName.Text = objDB.GetField("Filename", rowIndex).ToString();
                    txtAchievementFile.Text = objDB.GetField("File", rowIndex).ToString();
                    txtAchievementDescription.InnerText = objDB.GetField("Description", rowIndex).ToString();



                    ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openAchievementModal();", true);
                }

                //else if (objDB.GetField("Request Category", rowIndex).ToString() == "Contact")
                //{
                //    txtRequestID.Text = objDB.GetField("RequestID", rowIndex).ToString();
                //    txtRequestCategory.Text = objDB.GetField("Request Category", rowIndex).ToString();
                //    txtSubmitter.Text = objDB.GetField("Submitter", rowIndex).ToString();
                //    txtDateSubmitted.Text = objDB.GetField("Date Submitted", rowIndex).ToString();



                //    ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openContactModal();", true);
                //}

                else if (objDB.GetField("Request Category", rowIndex).ToString() == "Policy")
                {
                    txtPolicyRequestID.Text = objDB.GetField("RequestID", rowIndex).ToString();
                    txtPolicySubmitter.Text = objDB.GetField("Submitter", rowIndex).ToString();
                    txtPolicyDateSubmitted.Text = objDB.GetField("Date Submitted", rowIndex).ToString();

                    txtpolicyTitle.Text = objDB.GetField("Request Category", rowIndex).ToString();



                    ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openContactModal();", true);
                }

                else if (objDB.GetField("Request Category", rowIndex).ToString() == "Professional Development")
                {
                    txtPolicyRequestID.Text = objDB.GetField("RequestID", rowIndex).ToString();
                    txtpolicyTitle.Text = objDB.GetField("Request Category", rowIndex).ToString();
                    txtProfDevSubmitter.Text = objDB.GetField("Submitter", rowIndex).ToString();
                    txtProfDevDateSubmitted.Text = objDB.GetField("Date Submitted", rowIndex).ToString();



                    ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openProfessionalDevelopementModal();", true);
                }

                //else
                //{
                //    txtRequestID.Text = objDB.GetField("RequestID", rowIndex).ToString();
                //    txtRequestCategory.Text = objDB.GetField("Request Category", rowIndex).ToString();
                //    txtSubmitter.Text = objDB.GetField("Submitter", rowIndex).ToString();
                //    txtDateSubmitted.Text = objDB.GetField("Date Submitted", rowIndex).ToString();

                //    ScriptManager.RegisterStartupScript(this, this.GetType(), "modal", "openProfessionalDevelopementModal();", true);
                //}







            }
        }

        protected void btnContactSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}