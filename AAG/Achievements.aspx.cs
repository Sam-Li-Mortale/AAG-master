using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AAG
{
    public partial class Achievements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayAchievementInfo();
        }

        protected void DisplayAchievementInfo()
        {
            DBConnect objDB = new DBConnect();
            int count = 0;

            objDB.GetDataSet("SELECT AchieveID FROM Acievement", out count);

            // Create a Custom User Control (ASCX) object for each record in the dataset
            for (int recordNumber = 0; recordNumber < count; recordNumber++)
            {
                // Register the ASCX control with the page and typecast it to the appropriate class ProductDisplay
                AchievementFormat ctrl = (AchievementFormat)LoadControl("AchievementInformationFormat.ascx");

                // Set properties for the ProductDisplay object
                ctrl.AchievementID = (int)objDB.GetField("AchieveID", recordNumber);
                ctrl.DataBind();

                // Add the control object to the WebForm's Controls collection
                AchievementInfo.Controls.Add(ctrl);
            }
        }
    }
}