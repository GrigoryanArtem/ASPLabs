using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPLabs.Lab3
{
    public partial class Part1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // читаем название группы в переменную name

            String name = TextBox1.Text;

            // значение названия группы обязательно должно быть введено

            if (name == "") return;

            // строка запроса на добавление данных

            String query = "INSERT INTO groups (name) VALUES ('" + name + "')";

            // выполнение запроса на добавление данных

            SqlDataSource1.InsertCommand = query;

            SqlDataSource1.Insert();

            // очистка поля ввода

            TextBox1.Text = "";
        }
    }
}