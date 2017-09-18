using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class CEvent
    {
        public int eveID { get; set; }
        public string eventID { get; set; }
        public string eventTitle { get; set; }
        public string eventDescription { get; set; } 
        public string eventType { get; set; }
        public DateTime eventStart { get; set; }
        public DateTime eventEnd { get; set; }

    }
}
