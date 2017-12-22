using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWebApplication
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string name = ctrLoginTB.Text;
            string pass = CryptoProvider.GetMD5Hash(ctrPasswordTB.Text + "31415");

            HospitalDataBaseEntities2 context = new HospitalDataBaseEntities2();
            context.Users.AsNoTracking().FirstOrDefault(u => u.Name == name && u.Password == pass);

            if (context.Users.AsNoTracking().FirstOrDefault(u => u.Name == name && u.Password == pass) != null)
            { 
                HttpCookie cookieName = new HttpCookie("name", ctrLoginTB.Text);
                HttpCookie cookieSign = new HttpCookie("sign", CryptoProvider.GetMD5Hash(ctrPasswordTB.Text + "31415"));

                Response.Cookies.Add(cookieName);
                Response.Cookies.Add(cookieSign);

                Response.Redirect("Home.aspx");
            }
            else
            {
                ErrorLabel.Visible = true;
            }
}

        protected void RegistrationButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}