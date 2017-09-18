using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AAG
{
    public partial class ContactInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayContactInfo();
        }

        protected void DisplayContactInfo()
        {
            DBConnect objDB = new DBConnect();
            int count = 0;

            objDB.GetDataSet("SELECT ConID FROM Contact", out count);

            // Create a Custom User Control (ASCX) object for each record in the dataset
            for (int recordNumber = 0; recordNumber < count; recordNumber++)
            {
                // Register the ASCX control with the page and typecast it to the appropriate class ProductDisplay
                ContactInformationFormat ctrl = (ContactInformationFormat)LoadControl("ContactInformationFormat.ascx");

                // Set properties for the ProductDisplay object
                ctrl.ContactInfoID = (int)objDB.GetField("ConID", recordNumber);
                ctrl.DataBind();

                // Add the control object to the WebForm's Controls collection
                contactInfo.Controls.Add(ctrl);
            }
        }
    }
}