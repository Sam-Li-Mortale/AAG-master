using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AAG
{
    public partial class Resources : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayResourceInfo();
        }

        protected void DisplayResourceInfo()
        {
            DBConnect objDB = new DBConnect();
            int count = 0;

            objDB.GetDataSet("SELECT ResID FROM Resource", out count);

            // Create a Custom User Control (ASCX) object for each record in the dataset
            for (int recordNumber = 0; recordNumber < count; recordNumber++)
            {
                // Register the ASCX control with the page and typecast it to the appropriate class ProductDisplay
                ContentFormat ctrl = (ContentFormat)LoadControl("ContentFormat.ascx");

                // Set properties for the ProductDisplay object
                ctrl.ResourceID = (int)objDB.GetField("ResID", recordNumber);
                ctrl.DataBindResource();

                // Add the control object to the WebForm's Controls collection
                resourceInfo.Controls.Add(ctrl);
            }
        }
    }
}
   