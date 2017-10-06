using ASPLabs.Model;
using System;
using System.Linq;

namespace ASPLabs.Lab1
{
    public partial class Part3 : System.Web.UI.Page
    {
        protected void ButtonClick(object sender, EventArgs e)
        {
            var answer = GetAnswer(tbText.Text);
            lAnswer.Text = $"Min = {answer.Min}, Max = {answer.Max}";
        }

        private MinMaxResult GetAnswer(string text)
        {
            var wordsLengths = text.Split(' ').Select(s => s.Length);

            return new MinMaxResult(wordsLengths.Min(), wordsLengths.Max());
        }
    }
}