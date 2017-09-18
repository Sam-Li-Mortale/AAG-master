using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class Event : Request
    {
        DBConnect objDB;
        SqlCommand objCommand;
        public int eveID;
        public string eventID;
        public string eventTitle;
        public string eventDescription;
        public string eventType;
        public DateTime eventStart;
        public DateTime eventEnd;       
        
        public Event(string rName, string rTitle, string rStatus, string descrip, string eTitle, string eType, DateTime eStart, DateTime eEnd) : base(rName, rTitle, rStatus, descrip)
        {
            eventTitle = eTitle;
            eventDescription = descrip;
            eventType = eType;
            eventStart = eStart;
            eventEnd = eEnd;

            objDB = new DBConnect();
        }

        public int EveID
        {
            get { return eveID; }
            set { eveID = value; }
        }

        public string EventID
        {
            get { return eventID; }
            set { eventID = value; }
        }

        public string EventTitle
        {
            get { return eventTitle; }
            set { eventTitle = value; }
        }

        public string EventDescription
        {
            get { return eventDescription; }
            set { eventDescription = value; }
        }

        public string EventType
        {
            get { return eventType; }
            set { eventType = value; }
        }

        public DateTime EventStart
        {
            get { return eventStart; }
            set { eventStart = value; }
        }

        public DateTime EventEnd
        {
            get { return eventEnd; }
            set { eventEnd = value; }
        }

        public static List<CEvent> GetEvents(DateTime start, DateTime end)
        {
            List<CEvent> events = new List<CEvent>();
            DBConnect objDB = new DBConnect();
            SqlDataReader reader = objDB.GetDataReader("SELECT * FROM Event where EventStartDateTime>='" + start + "' AND EventEndDateTime<='" + end + "'");
            while (reader.Read())
            {
                events.Add(new CEvent()
                {
                    eveID = Convert.ToInt32(reader["EveID"]),
                    eventTitle = Convert.ToString(reader["EventTitle"]),
                    eventDescription = Convert.ToString(reader["EventDescription"]),
                    eventStart = Convert.ToDateTime(reader["EventStartDateTime"]),
                    eventEnd = Convert.ToDateTime(reader["EventEndDateTime"])
                });
            }
            return events;
        }

        public bool insertintodb()
        {
            bool isSuccess = false;
            objCommand = new SqlCommand();

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "AddEvent";

            objCommand.Parameters.AddWithValue("@requesterName", this.RequesterName);
            objCommand.Parameters.AddWithValue("@title", this.EventTitle);
            objCommand.Parameters.AddWithValue("@eventType", this.EventType);
            objCommand.Parameters.AddWithValue("@startDate", this.EventStart);
            objCommand.Parameters.AddWithValue("@endDate", this.EventEnd);
            objCommand.Parameters.AddWithValue("@description", this.EventDescription);

            if (objDB.DoUpdateUsingCmdObj(objCommand) > 0)
            {
                isSuccess = true;
            }
            else
            {
                isSuccess = false;
            }

            return isSuccess;
        }
    }
}
