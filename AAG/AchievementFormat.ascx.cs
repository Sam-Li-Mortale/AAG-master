using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AAG
{
    public partial class AchievementFormat : System.Web.UI.UserControl
    {
        int achievementID;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Category("Misc")]
        public int AchievementID
        {
            get { return achievementID; }
            set { achievementID = value; }
        }

        public override void DataBind()
        {
            DBConnect objDB = new DBConnect();
            String strSQL = "SELECT * FROM Achievement WHERE AchieveID=" + achievementID;

            objDB.GetDataSet(strSQL);

            lblName.Text = (String)objDB.GetField("FileName", 0) + " " + (String)objDB.GetField("ContactLastName", 0);
            lblAchievementType.Text = (String)objDB.GetField("AchievementType", 0);
            lblDescription.Text = "Blurb";
            URL.Text = (String)objDB.GetField("URL", 0);
            Download.Text = (String)objDB.GetField("FileAttachment", 0);
        }
    }
}