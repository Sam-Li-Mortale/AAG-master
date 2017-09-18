using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class Policy : Request
    {
        DBConnect objDB;
        SqlCommand objCommand;
        DataSet mySet;
        int pollID;
        string policyType, fileName, uRL;
        byte[] fileAttachment;

        public Policy(string rName, string rTitle, string rStatus, string descrip, string pType, string filName, string url, byte[] fAttachment) : base(rName, rTitle, rStatus, descrip)
        {
            policyType = pType;
            fileName = filName;
            uRL = url;
            fileAttachment = fAttachment;
            objDB = new DBConnect();
        }

        public Policy(string rName, string rTitle, string rStatus, string descrip, int rID) : base(rName, rTitle, rStatus, descrip)
        {
            objDB = new DBConnect();
            getData(rID);
        }

        public void getData(int id)
        {
            objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "SELECTPolicy";
            objCommand.Parameters.AddWithValue("@id", id);

            mySet = objDB.GetDataSetUsingCmdObj(objCommand);

            this.FileName = mySet.Tables[0].Rows[0]["FileName"].ToString();
            this.URL = mySet.Tables[0].Rows[0]["URL"].ToString();
            this.FileAttachment = (byte[])mySet.Tables[0].Rows[0]["FileAttachment"];
            this.policyType = mySet.Tables[0].Rows[0]["PolicyType"].ToString();
        }

        public void insertIntoDB()
        {
            objCommand = new SqlCommand();

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "AddPolicy";

            objCommand.Parameters.AddWithValue("@requesterName", this.RequesterName);
            objCommand.Parameters.AddWithValue("@title", this.Title);
            objCommand.Parameters.AddWithValue("@description", this.Description);
            objCommand.Parameters.AddWithValue("@fileName", this.FileName);
            objCommand.Parameters.AddWithValue("@fileAttachment", this.FileAttachment);
            objCommand.Parameters.AddWithValue("@url", this.URL);

            objDB.DoUpdateUsingCmdObj(objCommand);
        }

        public void updateDB(int id)
        {
            objCommand = new SqlCommand();

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "UpdatePolicy";

            objCommand.Parameters.AddWithValue("@id", id);
            objCommand.Parameters.AddWithValue("@fileName", this.FileName);
            objCommand.Parameters.AddWithValue("@fileAttachment", this.FileAttachment);
            objCommand.Parameters.AddWithValue("@url", this.URL);
            objCommand.Parameters.AddWithValue("@PolicyType", this.PolicyType);

            objDB.DoUpdateUsingCmdObj(objCommand);

        }

        public int PollID
        {
            get
            {
                return pollID;
            }

            set
            {
                pollID = value;
            }
        }

        public string PolicyType
        {
            get
            {
                return policyType;
            }

            set
            {
                policyType = value;
            }
        }

        public string FileName
        {
            get
            {
                return fileName;
            }

            set
            {
                fileName = value;
            }
        }

        public string URL
        {
            get
            {
                return uRL;
            }

            set
            {
                uRL = value;
            }
        }

        public byte[] FileAttachment
        {
            get
            {
                return fileAttachment;
            }

            set
            {
                fileAttachment = value;
            }
        }
    }
}
