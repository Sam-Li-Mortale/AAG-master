using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class Contact : Request
    {
        DBConnect objDB;
        SqlCommand objCommand;
        int conID;
        string requesterName, firstName, lastName, proTitle, email, number, location;

        public Contact(string rName, string rTitle, string rStatus, string descrip, string fName, string lName, string title, string mail, string pNumber, string address) : base(rName, rTitle, rStatus, descrip)
        {
            requesterName = rName;
            firstName = fName;
            lastName = lName;
            proTitle = title;
            email = mail;
            number = pNumber;
            location = address;

            objDB = new DBConnect();
        }

        public int insertIntoDB()
        {
            objCommand = new SqlCommand();

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "AddContact";

            objCommand.Parameters.AddWithValue("@requesterName", this.RequesterName);
            objCommand.Parameters.AddWithValue("@FName", this.FirstName);
            objCommand.Parameters.AddWithValue("@LName", this.LastName);
            objCommand.Parameters.AddWithValue("@ProTitle", this.ProTitle);
            objCommand.Parameters.AddWithValue("@Email", this.Email);
            objCommand.Parameters.AddWithValue("@Number", this.Number);
            objCommand.Parameters.AddWithValue("@Location", this.Location);

            return objDB.DoUpdateUsingCmdObj(objCommand);
        }

        public int ConID
        {
            get
            {
                return conID;
            }

            set
            {
                conID = value;
            }
        }

        public string Email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
            }
        }

        public string FirstName
        {
            get
            {
                return firstName;
            }

            set
            {
                firstName = value;
            }
        }

        public string LastName
        {
            get
            {
                return lastName;
            }

            set
            {
                lastName = value;
            }
        }

        public string Location
        {
            get
            {
                return location;
            }

            set
            {
                location = value;
            }
        }

        public string Number
        {
            get
            {
                return number;
            }

            set
            {
                number = value;
            }
        }

        public string ProTitle
        {
            get
            {
                return proTitle;
            }

            set
            {
                proTitle = value;
            }
        }
    }
}
