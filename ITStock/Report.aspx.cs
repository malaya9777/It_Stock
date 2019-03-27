using System;
using System.Linq;

namespace ITStock
{
    public partial class Report : System.Web.UI.Page
    {
        StockDB db = new StockDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadGrid();
            }
        }

        private void loadGrid()
        {
            grdReport.DataSource = db.Distributions.Select(n => new
                                    {

                                        n.ID,
                                        n.SectionName._Section,
                                        Device = n.Device.Make + " "+ n.Device.Model+" "+ n.Device.SerialNo,
                                        n.ReceiverName,
                                        n.DistributionDate

                                    });
            grdReport.DataBind();
        }
    }
}