using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPLabs.Lab3
{
    public partial class Part2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String z = TextBox1.Text;
            String s = TextBox2.Text;
            String n = TextBox3.Text;
            String p = TextBox4.Text;
            String b1 = Convert.ToString(Calendar.SelectedDate);
            String t = TextBox6.Text;

            int g = Convert.ToInt16(DropDownList1.SelectedValue);


            if (z == "" || s == "" || n == "" || b1 == "") return;

            DateTime b = Convert.ToDateTime(b1);


            String query = "INSERT INTO students (zachetka,surname,name,patronymic,birthdate,tel,id_group) VALUES ('" + z + "','" + s + "','" + n + "','" + p + "','" + b + "','" + t + "'," + g + ")";

            SqlDataSource1.InsertCommand = query;
            SqlDataSource1.Insert();


            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox6.Text = "";
        }
    }
}