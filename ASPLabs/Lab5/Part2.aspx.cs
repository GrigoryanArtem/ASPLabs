using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPLabs.Lab5
{
    public partial class Part2 : System.Web.UI.Page
    {
        protected void ExecuteButton_Click(object sender, EventArgs e)
        {
            var wsCalc = new ServiceReference.WebServiceSoapClient();
            int answer = wsCalc.Mul(
                Convert.ToInt32(ctFirstOperator.Text), 
                Convert.ToInt32(ctSecondOperator.Text));

            ctAnswerLabel.Text = Convert.ToString(answer);
        }
    }
}