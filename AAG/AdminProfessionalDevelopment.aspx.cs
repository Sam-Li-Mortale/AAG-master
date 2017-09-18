using ClassLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AcademicAdvisingGroup
{
    public partial class AdminProfessionalDevelopment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProfDevSubmit_Click(object sender, EventArgs e)
        {
            
            string profDevTitle = txtProfDevTitle.Text;
            string profDevType = ddlProfDevType.SelectedValue;
            string profDevLink = txtProfDevLink.Text;
            string profDevFileName = txtProfDevFileName.Text;
            string profDevDescription = profdevDescription.InnerText;
            byte[] bytes = { 1, 45, 89, 90 };
 
            ProDevelopment objProDevelopment = new ProDevelopment("Ryan", profDevTitle, profDevType, profDevDescription, profDevFileName, profDevLink, bytes);
            objProDevelopment.insertIntoDB();
        }
    }
}