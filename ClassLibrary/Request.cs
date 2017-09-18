using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
   public class Request
    {
        DBConnect objDB;
        SqlCommand objCommand;
        int requestID;
        string requesterName, title, requestStatus, description, adminUsername;
        DateTime creationDateTime;

        public Request(string rName, string rTitle, string rStatus, string descrip)
        {
            requesterName = rName;
            title = rTitle;
            requestStatus = rStatus;
            description = descrip;

            objDB = new DBConnect();
        }


        public void acceptRequest(int id)
        {
            objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "AcceptRequest";

            objCommand.Parameters.AddWithValue("@requestID", id);
            objCommand.Parameters.AddWithValue("@adminName", "Tester");

            objDB.DoUpdateUsingCmdObj(objCommand);

        }


        public int RequestID
        {
            get
            {
                return requestID;
            }

            set
            {
                requestID = value;
            }
        }

        public string RequesterName
        {
            get
            {
                return requesterName;
            }

            set
            {
                requesterName = value;
            }
        }

        public string Title
        {
            get
            {
                return title;
            }

            set
            {
                title = value;
            }
        }

        public string RequestStatus
        {
            get
            {
                return requestStatus;
            }

            set
            {
                requestStatus = value;
            }
        }

        public string Description
        {
            get
            {
                return description;
            }

            set
            {
                description = value;
            }
        }

        public string AdminUsername
        {
            get
            {
                return adminUsername;
            }

            set
            {
                adminUsername = value;
            }
        }

        public DateTime CreationDateTime
        {
            get
            {
                return creationDateTime;
            }

            set
            {
                creationDateTime = value;
            }
        }
    }
}
