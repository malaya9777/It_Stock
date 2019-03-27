using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ITStock
{
    public class StockDB:DbContext
    {
        public DbSet<Section> Sections { get; set; }
        public DbSet<DeviceCategory> DeviceCategories { get; set; }
        public DbSet<Device> Devices { get; set; }
        public DbSet<Distribution> Distributions { get; set; }
    }
}