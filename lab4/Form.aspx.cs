using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab4
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }

        protected void SqlDataSource1_Inserting(object sender, SqlDataSourceCommandEventArgs e)
        {
            string zodiac_name = (GridView1.FooterRow.FindControl("DropDownList1") as DropDownList).Text;
            string full_name = (GridView1.FooterRow.FindControl("ctrName") as TextBox).Text;
            string phone_number = (GridView1.FooterRow.FindControl("ctrPhoneNumber") as TextBox).Text;
            string email = (GridView1.FooterRow.FindControl("ctrEmail") as TextBox).Text;
            string date = (GridView1.FooterRow.FindControl("ctrDateOfB") as TextBox).Text;



            e.Command.Parameters["@zodiac_name"].Value = zodiac_name;
            e.Command.Parameters["@full_name"].Value = full_name;
            e.Command.Parameters["@phone_number"].Value = phone_number;
            e.Command.Parameters["@email"].Value = email;
            e.Command.Parameters["@date"].Value = date;
        }
    }
}