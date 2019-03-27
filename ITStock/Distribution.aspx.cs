using System;
using System.Globalization;
using System.Linq;
using System.Web.UI.WebControls;

namespace ITStock
{
    public partial class Distribution1 : System.Web.UI.Page
    {
        StockDB db = new StockDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDropdowns();

            }
        }

        private void loadDropdowns()
        {
            //Load Section
            ddlSection.DataSource = db.Sections.Where(n => n.Visible == true).Select(n => new { n.ID, n._Section }).ToList();
            ddlSection.DataTextField = "_Section";
            ddlSection.DataValueField = "ID";
            ddlSection.DataBind();
            ddlSection.Items.Insert(0, new ListItem("Select Section", "0"));

            //Load Device

            ddlDevice.DataSource = db.Devices.Where(n => n.Status == false).Select(n => new { n.ID, DeviceName = n.Category.Category + "-" + n.Make + "-" + n.SerialNo }).ToList();
            ddlDevice.DataTextField = "DeviceName";
            ddlDevice.DataValueField = "ID";
            ddlDevice.DataBind();
            ddlDevice.Items.Insert(0, new ListItem("Select Device", "0"));

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int DeviceID = Convert.ToInt32(ddlDevice.SelectedValue);
                int SectionID = Convert.ToInt32(ddlSection.SelectedValue);
                Distribution distribution = new Distribution();
                Device device = db.Devices.Where(n => n.ID == DeviceID).FirstOrDefault();
                distribution.Device = device;
                distribution.SectionName = db.Sections.Where(n => n.ID == SectionID).FirstOrDefault();
                distribution.ReceiverName = txtReceiverName.Text;
                distribution.DistributionDate = txtDistributionDate.Text == string.Empty ? DateTime.Now : DateTime.ParseExact(txtDistributionDate.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture);
                device.Status = true;
                db.Distributions.Add(distribution);
                db.SaveChanges();
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}