using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWebApplication
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DoctorsGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = Convert.ToInt32(DoctorsGV.SelectedIndex);
            GridViewRow row = DoctorsGV.Rows[index];
            Response.Redirect($"Diseas.aspx?name={row.Cells[2].Text}");
        }
    }
}