using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class Resource : Request
    {
        DBConnect objDB;
        DataSet mySet;
        SqlCommand objCommand;
        int resID;
        string resourceType, fileName, uRL;
        byte[] fileAttachment;

        public Resource(string rName, string rTitle, string rStatus, string descrip, string rType, string filName, string url, byte[] fAttachment) : base(rName, rTitle, rStatus, descrip)
        {
            resourceType = rType;
            fileName = filName;
            uRL = url;
            fileAttachment = fAttachment;

            objDB = new DBConnect();
        }

        public Resource(string rName, string rTitle, string rStatus, string descrip, int rID) : base(rName, rTitle, rStatus, descrip)
        {
            objDB = new DBConnect();
            getData(rID);
        }

       
        public void getData(int id)
        {
            objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "SELECTResource";
            objCommand.Parameters.AddWithValue("@id", id);

            mySet = objDB.GetDataSetUsingCmdObj(objCommand);

            this.FileName = mySet.Tables[0].Rows[0]["FileName"].ToString();
            this.URL = mySet.Tables[0].Rows[0]["URL"].ToString();
            this.FileAttachment = (byte[]) mySet.Tables[0].Rows[0]["FileAttachment"];
            this.ResourceType = mySet.Tables[0].Rows[0]["ResourceType"].ToString();
        }

        public int insertIntoDB()
        {
            objCommand = new SqlCommand();

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "AddResource";

            objCommand.Parameters.AddWithValue("@requesterName", this.RequesterName);
            objCommand.Parameters.AddWithValue("@title", this.Title);
            objCommand.Parameters.AddWithValue("@description", this.Description);
            objCommand.Parameters.AddWithValue("@fileName", this.FileName);
            objCommand.Parameters.AddWithValue("@fileAttachment", this.FileAttachment);
            objCommand.Parameters.AddWithValue("@url", this.URL);
            objCommand.Parameters.AddWithValue("@resourceType", this.ResourceType);

            return objDB.DoUpdateUsingCmdObj(objCommand);
        }

        public void updateDB(int id)
        {
            objCommand = new SqlCommand();

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "UpdateResource";

            objCommand.Parameters.AddWithValue("@id", id);
            objCommand.Parameters.AddWithValue("@fileName", this.FileName);
            objCommand.Parameters.AddWithValue("@fileAttachment", this.FileAttachment);
            objCommand.Parameters.AddWithValue("@url", this.URL);
            objCommand.Parameters.AddWithValue("@resourceType", this.ResourceType);

            objDB.DoUpdateUsingCmdObj(objCommand);

        }

        public int ResID
        {
            get
            {
                return resID;
            }

            set
            {
                resID = value;
            }
        }

        public string ResourceType
        {
            get
            {
                return resourceType;
            }

            set
            {
                resourceType = value;
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
