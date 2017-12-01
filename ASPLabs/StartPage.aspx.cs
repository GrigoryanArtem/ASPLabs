using System;

namespace ASPLabs
{
    public partial class StartPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Form.Target = "_blank";
            InitPages();
        }

        protected void ButtonClick(object sender, EventArgs e)
        {
            Response.Redirect(dlLabs.SelectedItem.Text);
        }

        private void InitPages()
        {
            var labs = new String[] {
                @"Lab1\Part1.aspx",
                @"Lab1\Part2.aspx",
                @"Lab1\Part3.aspx",
                @"Lab2\Part1.aspx",
                @"Lab2\Part2.aspx",
                @"Lab2\Part3.aspx",
                @"Lab2\Part4.aspx",
                @"Lab2\Part5.aspx",
                @"Lab2\Part6.aspx",
                @"Lab3\Part1.aspx",
                @"Lab3\Part2.aspx",
                @"Lab3\Part3.aspx"};

            foreach(var lab in labs)
                dlLabs.Items.Add(lab);
        }
    }
}