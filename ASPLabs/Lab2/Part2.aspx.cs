using System;

namespace ASPLabs.Lab2
{
    public partial class Part2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                genderList.Items.Add("Он");
                genderList.Items.Add("Она");
                genderList.Items.Add("Оно");
            }
        }

        protected void genderList_SelectedIndexChanged(object sender, EventArgs e)
        {
            answerLabel.Text = genderList.SelectedIndex.ToString();
            if (genderList.SelectedIndex == 0)
                answerLabel.Text = "Я думаю що ви - це він";
            if (genderList.SelectedIndex == 1)
                answerLabel.Text = "Я думаю що ви - це вона";
            if (genderList.SelectedIndex == 2)
                answerLabel.Text = "Ой, хто ви?";
        }
    }
}