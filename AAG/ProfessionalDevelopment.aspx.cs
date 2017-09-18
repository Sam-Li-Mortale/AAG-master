using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AAG
{
    public partial class ProfessionalDevelopment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayProfDevInfo();
        }

        protected void DisplayProfDevInfo()
        {
            DBConnect objDB = new DBConnect();
            int count = 0;

            objDB.GetDataSet("SELECT PDevID FROM ProDevelopment", out count);

            // Create a Custom User Control (ASCX) object for each record in the dataset
            for (int recordNumber = 0; recordNumber < count; recordNumber++)
            {
                // Register the ASCX control with the page and typecast it to the appropriate class ProductDisplay
                ContentFormat ctrl = (ContentFormat)LoadControl("ContentFormat.ascx");

                // Set properties for the ProductDisplay object
                ctrl.ProfDevID = (int)objDB.GetField("PDevID", recordNumber);
                ctrl.DataBind();

                // Add the control object to the WebForm's Controls collection
                profDevInfo.Controls.Add(ctrl);
            }
        }
    }
}
