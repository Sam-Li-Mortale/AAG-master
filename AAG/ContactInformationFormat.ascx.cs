using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;

namespace AAG
{
    public partial class ContactInformationFormat : System.Web.UI.UserControl
    {
        int contactInfoID;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Category("Misc")]
        public int ContactInfoID
        {
            get { return contactInfoID; }
            set { contactInfoID = value; }
        }

        public override void DataBind()
        {
            DBConnect objDB = new DBConnect();
            String strSQL = "SELECT * FROM Contact WHERE ConID=" + contactInfoID;

            objDB.GetDataSet(strSQL);

            lblName.Text = (String)objDB.GetField("ContactFirstName", 0) + " " + (String)objDB.GetField("ContactLastName", 0);
            lblTitle.Text = (String)objDB.GetField("ProfessionalTitle", 0);
            lblPhoneNumber.Text = (String)objDB.GetField("Email", 0);
            lblEmail.Text = (String)objDB.GetField("PhoneNumber", 0);
            lblLocation.Text = (String)objDB.GetField("Location", 0);
        }
    }
}