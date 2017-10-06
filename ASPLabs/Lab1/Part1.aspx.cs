using System;

namespace ASPLabs.Lab1
{
    public partial class Part1 : System.Web.UI.Page
    {
        protected void PaymentButtonClick(object sender, EventArgs e)
        {
            try
            {
                double principal = Convert.ToDouble(tbPrincipal.Text);
                double rate = Convert.ToDouble(tbRate.Text) / 100;
                double term = Convert.ToDouble(tbTerm.Text);
                double tmp = Math.Pow(1 + (rate / 12), term);
                double payment = principal * (((rate / 12) * tmp) / (tmp - 1));

                lOutput.Text = $"Monthly Payment = {payment:F2} $";
            }
            catch (Exception exp)
            {
                lOutput.Text = exp.Message;
            }
        }
    }
}