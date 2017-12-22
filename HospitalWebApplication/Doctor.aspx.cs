using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWebApplication
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckUser();

            int id = Convert.ToInt32(Request.QueryString["id"]);
            HospitalDataBaseEntities2 context = new HospitalDataBaseEntities2();

            var doc = context.Doctors.FirstOrDefault(d => d.Id == id);

            if(doc != null)
            {
                ctrNameL.Text = doc.FullName;
                ctrSpecL.Text = doc.Specialization.Name;
            }
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

        protected void Label1_Click(object sender, EventArgs e)
        {
            Response.Redirect($"Diseas.aspx?name={(sender as LinkButton).Text}");
        }

        protected void Label2_Click(object sender, EventArgs e)
        {
            string patientName = (sender as LinkButton).Text;

            HospitalDataBaseEntities2 context = new HospitalDataBaseEntities2();
            var pat = context.Pacients.FirstOrDefault(p => p.FullName == patientName);

            Response.Redirect($"Pacient.aspx?id={pat.Id}");
        }
    }
}