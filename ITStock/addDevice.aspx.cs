using System;
using System.Globalization;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITStock
{
    public partial class addDevice : System.Web.UI.Page
    {
        StockDB db = new StockDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDrodowns();

            }
        }

        private void loadDrodowns()
        {
            //Load Categories
            ddlCategory.DataSource = db.DeviceCategories.Where(n => n.Visible == true).Select(n => new { n.ID, n.Category }).ToList();
            ddlCategory.DataValueField = "ID";
            ddlCategory.DataTextField = "Category";
            ddlCategory.DataBind();
            ddlCategory.Items.Insert(0, new ListItem("Select Category", "0"));

           

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Device device = new Device();
                device.Make = txtMake.Text;
                device.Model = txtModel.Text;
                device.SerialNo = txtSerialNo.Text;
                device.DateofReceiving = txtDateofReceiving.Text == string.Empty ? DateTime.Now : DateTime.ParseExact(txtDateofReceiving.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture);
                device.ReceivedFrom = txtReceivedFrom.Text;
                device.Status = false;
                device.Remark = txtRemarks.Text;
                int selectedDeviceID = int.Parse(ddlCategory.Text);
                device.Category = db.DeviceCategories.Where(n => n.ID == selectedDeviceID).Select(n => n).SingleOrDefault();

                db.Devices.Add(device);
                db.SaveChanges();
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}