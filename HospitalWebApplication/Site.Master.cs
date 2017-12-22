using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWebApplication
{
    public partial class Site : System.Web.UI.MasterPage
    {
        public User user;

        protected void Page_Load(object sender, EventArgs e)
        {
            GetUser();
        }

        private void GetUser()
        {
            HttpCookie name = Request.Cookies["name"];
            HttpCookie sign = Request.Cookies["sign"];

            HospitalDataBaseEntities2 context = new HospitalDataBaseEntities2();

            user = name is null || sign is null ? null : context.Users
                .AsNoTracking()
                .FirstOrDefault(u => u.Name == name.Value && u.Password == sign.Value);
        }
    }
}