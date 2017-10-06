using System;

namespace ASPLabs.Lab2
{
    public partial class Part3 : System.Web.UI.Page
    {
        protected void AnswerButtonClick(object sender, EventArgs e)
        {
            if (inputTextBox.Text != String.Empty)
            {
                if (inputTextBox.Text[inputTextBox.Text.Length - 1] == 'й' ||
                    inputTextBox.Text[inputTextBox.Text.Length - 1] == 'р' ||
                    inputTextBox.Text[inputTextBox.Text.Length - 1] == 'н' ||
                    inputTextBox.Text[inputTextBox.Text.Length - 1] == 'в')
                    answerLabel.Text = "Я думаю, что вы мужчина";
                else if (inputTextBox.Text[inputTextBox.Text.Length - 1] == 'а' ||
                    inputTextBox.Text[inputTextBox.Text.Length - 1] == 'я')
                    answerLabel.Text = "Я думаю, что вы женщина";
                else
                    answerLabel.Text = "Я не могу точно определить Ваш пол";
            }
            else
                answerLabel.Text = "Введите своё имя!";
        }
    }
}