using System;
using System.Web.UI.WebControls;

namespace ASPLabs.Lab2
{
    public partial class Part5 : System.Web.UI.Page
    {
        protected void CheckBoxList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CheckBoxList.Items[0].Selected && CheckBoxList.Items[1].Selected)
            {
                helloLabel.Text = "Hello Привет";
                return;
            }
            if (CheckBoxList.Items[1].Selected)
                helloLabel.Text = "Привет";
            if (CheckBoxList.Items[0].Selected)
                helloLabel.Text = "Hello";
        }
    }
}