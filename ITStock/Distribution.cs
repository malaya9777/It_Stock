
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITStock
{
    public class Distribution
    {
        public int ID { get; set; }
        public Device Device { get; set; }
        public Section SectionName { get; set; }
        public string ReceiverName { get; set; }
        public DateTime DistributionDate { get; set; }

    }
}