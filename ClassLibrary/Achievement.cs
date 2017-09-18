using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class Achievement : Request
    {
        DBConnect objDB;
        SqlCommand objCommand;
        DataSet mySet;
        int achieveID;
        string achievementType, firstName, lastName, fileName, uRL;
        byte[] fileAttachment;
        DateTime achievementDate;
        
        
        public Achievement(string rName, string rTitle, string rStatus, string descrip, string aType, string fName, string lName, string filName, string url, byte[] fAttachment, DateTime date) : base(rName, rTitle, rStatus, descrip)
        {
            achievementType = aType;
            firstName = fName;
            lastName = lName;
            fileName = filName;
            uRL = url;
            fileAttachment = fAttachment;
            achievementDate = date;

            objDB = new DBConnect();
        }

        public Achievement(string rName, string rTitle, string rStatus, string descrip, int rID) : base(rName, rTitle, rStatus, descrip)
        {
            objDB = new DBConnect();
            getData(rID);
        }


        public void getData(int id)
        {
            objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "SELECTAchievement";
            objCommand.Parameters.AddWithValue("@id", id);

            mySet = objDB.GetDataSetUsingCmdObj(objCommand);

            this.FileName = mySet.Tables[0].Rows[0]["FileName"].ToString();
            this.URL = mySet.Tables[0].Rows[0]["URL"].ToString();
            this.FileAttachment = (byte[])mySet.Tables[0].Rows[0]["FileAttachment"];
            this.AchievementType = mySet.Tables[0].Rows[0]["AchievementType"].ToString();
            this.FirstName = mySet.Tables[0].Rows[0]["FirstName"].ToString();
            this.LastName = mySet.Tables[0].Rows[0]["LastName"].ToString();
            this.AchievementDate = DateTime.Parse(mySet.Tables[0].Rows[0]["AchievementDate"].ToString());
        }

        public void insertIntoDB()
        {
            objCommand = new SqlCommand();

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "AddAchievement";

            objCommand.Parameters.AddWithValue("@requesterName", this.RequesterName);
            objCommand.Parameters.AddWithValue("@title", this.Title);
            objCommand.Parameters.AddWithValue("@description", this.Description);
            objCommand.Parameters.AddWithValue("@achieveType", this.AchievementType);
            objCommand.Parameters.AddWithValue("@FName", this.FirstName);
            objCommand.Parameters.AddWithValue("@LName", this.LastName);
            objCommand.Parameters.AddWithValue("@achievDate", this.AchievementDate);
            objCommand.Parameters.AddWithValue("@fileName", this.FileName);
            objCommand.Parameters.AddWithValue("@fileAttachment", this.FileAttachment);
            objCommand.Parameters.AddWithValue("@url", this.URL);

            objDB.DoUpdateUsingCmdObj(objCommand);
        }


        public void updateDB(int id)
        {
            objCommand = new SqlCommand();

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "UpdateAchievement";

            objCommand.Parameters.AddWithValue("@id", id);
            objCommand.Parameters.AddWithValue("@fileName", this.FileName);
            objCommand.Parameters.AddWithValue("@fileAttachment", this.FileAttachment);
            objCommand.Parameters.AddWithValue("@url", this.URL);
            objCommand.Parameters.AddWithValue("@achieveType", this.AchievementType);
            objCommand.Parameters.AddWithValue("@FName", this.FirstName);
            objCommand.Parameters.AddWithValue("@LName", this.LastName);
            objCommand.Parameters.AddWithValue("@achievDate", this.AchievementDate);

            objDB.DoUpdateUsingCmdObj(objCommand);

        }

        public string AchievementType
        {
            get
            {
                return achievementType;
            }

            set
            {
                achievementType = value;
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

        public DateTime AchievementDate
        {
            get
            {
                return achievementDate;
            }

            set
            {
                achievementDate = value;
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

        public int AchieveID
        {
            get
            {
                return achieveID;
            }

            set
            {
                achieveID = value;
            }
        }
    }
}
