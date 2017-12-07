using ASPLabs.ServiceReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPLabs.Lab5
{
    public partial class Part3 : System.Web.UI.Page
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
                var wsCalc = new WebServiceSoapClient();
                lAnswer.Text = $"Number of positive even numbers = {wsCalc.NumberOfNaturalEvenNumbers(GetAnswer())}";
            }
            catch (Exception exp)
            {
                ShowMessage("Error", exp.Message);
            }
        }

        private ArrayOfInt GetAnswer()
        {
            var result = new ArrayOfInt();

            result.AddRange(mTextBoxes
                .Select(tb => Convert.ToInt32(tb.Text))
                .ToArray());

            return result;
        }

        private void ShowMessage(string Message, string Title)
        {
            ScriptManager.RegisterStartupScript(Page, this.GetType(), "alert", string.Format("alert('{1}', '{0}');", Message, Title), true);
        }
    }
}