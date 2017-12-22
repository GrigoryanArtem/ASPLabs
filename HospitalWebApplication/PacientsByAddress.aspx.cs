using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWebApplication
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckUser();
        }

        protected void ctrPatientsGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = Convert.ToInt32(ctrPatientsGV.SelectedIndex);
            GridViewRow row = ctrPatientsGV.Rows[index];
            Response.Redirect($"Pacient.aspx?id={(row.Cells[1].FindControl("IdLabel") as Label).Text}");
        }

        private void CheckUser()
        {
            HttpCookie name = Request.Cookies["name"];
            HttpCookie sign = Request.Cookies["sign"];

            HospitalDataBaseEntities2 context = new HospitalDataBaseEntities2();

            User user = name is null || sign is null ? null : context.Users
                .AsNoTracking()
                .FirstOrDefault(u => u.Name == name.Value && u.Password == sign.Value);

            if (user is null)
                Response.Redirect("/Login.aspx");
        }
    }
}