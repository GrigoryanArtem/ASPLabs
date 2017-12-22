using System;
using System.Linq;

namespace HospitalWebApplication
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["name"];

            HospitalDataBaseEntities2 context = new HospitalDataBaseEntities2();
            var disease = context.Diseases.AsNoTracking().FirstOrDefault(d => d.Name == name);

            ctrNameL.Text = disease.Name;
            ctrDescL.Text = disease.Description;
        }
    }
}