using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ASPLabs
{
    /// <summary>
    /// Сводное описание для WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Чтобы разрешить вызывать веб-службу из скрипта с помощью ASP.NET AJAX, раскомментируйте следующую строку. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {

        [WebMethod(Description = "The Sum of two integers")]
        public int Add(int a, int b)
        {
            return a + b;
        }

        [WebMethod(Description = "The Substraction of two integers")]
        public int Sub(int a, int b)
        {
            return a - b;
        }

        [WebMethod(Description = "The Multiplication of two integers")]
        public int Mul(int a, int b)
        {
            return a * b;
        }

        [WebMethod(Description = "The Division of two integers")]
        public float Div(int a, int b)
        {
            return a / b;
        }

        [WebMethod(Description = "Number Of natural even numbers")]
        public int NumberOfNaturalEvenNumbers(List<int> arr)
        {
            return arr
                .Where(num => ((num > 0) && IsEven(num)))
                .Count();
        }

        private bool IsEven(int number)
        {
            return (number & 1) == 0;
        }
    }
}
