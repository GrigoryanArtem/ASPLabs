using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWebApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = Convert.ToInt32(DoctorsGV.SelectedIndex);
            GridViewRow row = DoctorsGV.Rows[index];
            Response.Redirect($"Doctor.aspx?id={(row.Cells[1].FindControl("IdLabel") as Label).Text}");
        }
    }
}