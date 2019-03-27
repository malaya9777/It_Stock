using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace ITStock
{
    public partial class Admin : System.Web.UI.Page
    {
        StockDB db = new StockDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadListView();
            }
        }

        private void loadListView()
        {

            lstSection.DataSource = db.Sections.Where(n => n.Visible == true).ToList();
            lstSection.DataBind();
            lstCategory.DataSource = db.DeviceCategories.Where(n => n.Visible == true).ToList();
            lstCategory.DataBind();

        }

        protected void btnAddSection_Click(object sender, EventArgs e)
        {

            if (db.Sections.Where(n => n._Section == section.Text).SingleOrDefault() == null)
            {
                Section Section = new Section();
                Section._Section = section.Text;
                Section.Visible = true;
                db.Sections.Add(Section);
                db.SaveChanges();
                section.Text = string.Empty;
                loadListView();
            }


        }

        protected void btnAddCategories_Click(object sender, EventArgs e)
        {
            if (db.DeviceCategories.Where(n => n.Category == category.Text).SingleOrDefault() == null)
            {

                DeviceCategory dCategory = new DeviceCategory();
                dCategory.Category = category.Text;
                dCategory.Visible = true;
                db.DeviceCategories.Add(dCategory);
                db.SaveChanges();
                category.Text = string.Empty;
                loadListView();
            }

        }

        protected void btnsectionDelete_Command(object sender, CommandEventArgs e)
        {
            int ID = Convert.ToInt32(e.CommandArgument);

            Section section = db.Sections.Where(n => n.ID == ID).FirstOrDefault();
            if (section != null)
            {
                section.Visible = false;
                db.SaveChanges();
            }

        }



        protected void btnCategoryDelete_Command(object sender, CommandEventArgs e)
        {
            int ID = Convert.ToInt32(e.CommandArgument);

            DeviceCategory category = db.DeviceCategories.Where(n => n.ID == ID).FirstOrDefault();
            if (category != null)
            {
                category.Visible = false;
                db.SaveChanges();
            }
        }
    }
}