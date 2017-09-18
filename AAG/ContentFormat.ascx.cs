using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;

namespace AAG
{
    public partial class ContentFormat : System.Web.UI.UserControl
    {
        int policyID;
        int announcementID;
        int resourceID;
        int profdevID;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Category("Misc")]
        public int PolicyID
        {
            get { return policyID; }
            set { policyID = value; }
        }

        [Category("Misc")]
        public int AnnouncementID
        {
            get { return announcementID; }
            set { announcementID = value; }
        }
        
        [Category("Misc")]
        public int ResourceID
        {
            get { return resourceID; }
            set { resourceID = value; }
        }

        [Category("Misc")]
        public int ProfDevID
        {
            get { return profdevID; }
            set { profdevID = value; }
        }

        public void DataBindPolicy()
        {
            DBConnect objDB = new DBConnect();
            String strSQL = "SELECT * FROM Policy WHERE PolID=" + policyID;

            objDB.GetDataSet(strSQL);

            lblTitle.Text = "POLICY TITLE";
            lblDescription.Text = "Policy description";
            URL.Text = (String)objDB.GetField("URL", 0);
            Download.Text = (String)objDB.GetField("FileName", 0);          
        }

        public void DataBindAnnouncement()
        {
            DBConnect objDB = new DBConnect();
            String strSQL = "SELECT * FROM Announcement WHERE AnnID=" + announcementID;

            objDB.GetDataSet(strSQL);

            lblTitle.Text = "Announcement TITLE";
            lblDescription.Text = "Announcement description";
            URL.Text = (String)objDB.GetField("URL", 0);
            Download.Text = (String)objDB.GetField("FileName", 0);
        }

        public void DataBindResource()
        {
            DBConnect objDB = new DBConnect();
            String strSQL = "SELECT * FROM Resource WHERE ResID=" + resourceID;

            objDB.GetDataSet(strSQL);

            lblTitle.Text = (String)objDB.GetField("FileName", 0);
            lblDescription.Text = (String)objDB.GetField("ResourceType", 0);
            URL.Text = (String)objDB.GetField("URL", 0);
            Download.Text = (String)objDB.GetField("FileName", 0);
        }

        public void DataBindProfDev()
        {
            DBConnect objDB = new DBConnect();
            String strSQL = "SELECT * FROM ProDevelopment WHERE PDevID=" + profdevID;

            objDB.GetDataSet(strSQL);

            lblTitle.Text = "POLICY TITLE";
            lblDescription.Text = "Policy description";
            URL.Text = (String)objDB.GetField("URL", 0);
            Download.Text = (String)objDB.GetField("FileName", 0);
        }
    }
}