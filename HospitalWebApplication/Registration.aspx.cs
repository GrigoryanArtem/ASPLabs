using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWebApplication
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Create_Click(object sender, EventArgs e)
        {
            string name = ctrLoginTB.Text;

            string pass1 = ctrPassword1TB.Text;
            string pass2 = ctrPassword2TB.Text;

            

            if (pass1 == pass2)
            {
                HospitalDataBaseEntities2 context = new HospitalDataBaseEntities2();

                if (context.Users.AsNoTracking().FirstOrDefault(u => u.Name == name) is null)
                {
                    context.Users.Add(new User { Name = name, Password = CryptoProvider.GetMD5Hash(pass1 + "31415") });
                    context.SaveChanges();

                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}