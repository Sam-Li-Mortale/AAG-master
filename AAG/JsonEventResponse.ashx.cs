using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ClassLibrary;
using System.Web.SessionState;

namespace AAG
{
    /// <summary>
    /// Summary description for JsonEventResponse
    /// </summary>
    public class JsonEventResponse : IHttpHandler, IRequiresSessionState
    {
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            DateTime start = Convert.ToDateTime(context.Request.QueryString["start"]);
            DateTime end = Convert.ToDateTime(context.Request.QueryString["end"]);

            List<int> idList = new List<int>();
            List<FullCalendarEvent> tasksList = new List<FullCalendarEvent>();

            //Generate JSON serializable events
            foreach (CEvent cevent in Event.GetEvents(start, end))
            {
                tasksList.Add(new FullCalendarEvent
                {
                    id = cevent.eveID,
                    title = cevent.eventTitle,
                    start = String.Format("{0:s}", cevent.eventStart),
                    end = String.Format("{0:s}", cevent.eventEnd),
                    description = cevent.eventDescription
                });
                idList.Add(cevent.eveID);
            }           
            context.Session["idList"] = idList;

            //Serialize events to string
            System.Web.Script.Serialization.JavaScriptSerializer oSerializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            string sJSON = oSerializer.Serialize(tasksList);

            //Write JSON to response object
            context.Response.Write(sJSON);
        }

        public bool IsReusable
        {
            get { return false; }
        }
    }
}