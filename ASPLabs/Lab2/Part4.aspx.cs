using System;

namespace ASPLabs.Lab2
{
    public partial class Part4 : System.Web.UI.Page
    {
        protected void answerButton_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(nameTextBox.Text) && !String.IsNullOrEmpty(ageTextBox.Text))
            {
                int age = Convert.ToInt32(ageTextBox.Text) * 365;
                answerLabel.Text = $"{nameTextBox.Text}, вы прожили примерно  {age} дней.";
            }
            else if (String.IsNullOrEmpty(nameTextBox.Text))
            {
                answerLabel.Text = "Введите своё имя!";
            }
            else
            {
                answerLabel.Text = "Введите свой возраст!";
            }
        }
    }
}