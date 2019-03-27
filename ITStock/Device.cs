using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.ComponentModel.DataAnnotations;

namespace ITStock
{
    public class Device
    {
        
        public int ID { get; set; }
        public DeviceCategory Category { get; set; }
        public string Make { get; set; }
        public string Model { get; set; }
        public string SerialNo { get; set; }
        public DateTime DateofReceiving { get; set; }
        public string ReceivedFrom { get; set; }
        public bool Status { get; set; }
        public string Remark { get; set; }
    }
}