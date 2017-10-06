using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPLabs.Lab1
{
    public partial class Part2 : System.Web.UI.Page
    {
        private TextBox[] mTextBoxes;

        protected void Page_Load(object sender, EventArgs e)
        {
            mTextBoxes = new TextBox[10];

            for (int i = 0; i < mTextBoxes.Length; i++)
            {
                mTextBoxes[i] = new TextBox();
                phTextBoxes.Controls.Add(mTextBoxes[i]);
            }
        }

        protected void ButtonClick(object sender, EventArgs e)
        {
            try
            {
                lAnswer.Text = $"Number of positive even numbers = {GetAnswer()}";
            }
            catch (Exception exp)
            {
                ShowMessage("Error", exp.Message);
            }
        }

        private int GetAnswer()
        {
            return mTextBoxes
                .Select(tb => Convert.ToInt32(tb.Text))
                .Where(num => ((num > 0) && IsEven(num)))
                .Count();
        }

        bool IsEven(int number)
        {
            return (number & 1) == 0;
        }

        private void ShowMessage(string Message, string Title)
        {
            ScriptManager.RegisterStartupScript(Page, this.GetType(), "alert", string.Format("alert('{1}', '{0}');", Message, Title), true);
        }
    }
}