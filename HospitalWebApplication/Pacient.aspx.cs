using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWebApplication
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckUser();

            HospitalDataBaseEntities2 context = new HospitalDataBaseEntities2();
            int id = Convert.ToInt32(Request.QueryString["id"]);

            Pacient pcnt = context.Pacients.FirstOrDefault(p => p.Id == id);

            if (pcnt != null) {
                ctrNameL.Text = pcnt.FullName;
                ctrGenderL.Text = pcnt.Gender.ToString();
                ctrPhoneNumber.Text = pcnt.PacientDetail.PhoneNumber;
                ctrDateOfBirth.Text = pcnt.PacientDetail.DateOfBirth.ToShortDateString();
            }
        }

        protected void Disease_Click(object sender, EventArgs e)
        {
            Response.Redirect($"Diseas.aspx?name={(sender as LinkButton).Text}");
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

        protected void Label2_Click(object sender, EventArgs e)
        {
            var doctorName = (sender as LinkButton).Text;

            HospitalDataBaseEntities2 context = new HospitalDataBaseEntities2();
            var doc = context.Doctors.FirstOrDefault(d => d.FullName == doctorName);

            Response.Redirect($"Doctor.aspx?id={doc.Id}");
        }
    }
}