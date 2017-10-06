using System;

namespace ASPLabs.Lab2
{
    public partial class Part1 : System.Web.UI.Page
    {
        protected void answerButton_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(inputNameTextBox.Text))
                greetingsLabel.Text = $"Здравствуй, {inputNameTextBox.Text}";
            else
                greetingsLabel.Text = "Введите своё имя!";
        }
    }
}