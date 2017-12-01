using Lab3.Data;
using Lab3.Data.Model;
using Lab3.Data.Services;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPLabs.Lab3
{
    public partial class Part3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            Update();
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            Goods.Insert();            
        }

        protected void Goods_Inserting(object sender, SqlDataSourceCommandEventArgs e)
        {
            string name = (ctData.FooterRow.FindControl("tbxGoodName") as TextBox).Text;
            string keepingTime = (ctData.FooterRow.FindControl("txbKeepingTime") as TextBox).Text;
            string price = (ctData.FooterRow.FindControl("txbPrice") as TextBox).Text;

            string typeName = (ctData.FooterRow.FindControl("ddTypes") as DropDownList).Text;
            string provName = (ctData.FooterRow.FindControl("ddProvs") as DropDownList).Text;
            string prodName = (ctData.FooterRow.FindControl("ddProds") as DropDownList).Text;

            e.Command.Parameters["@name"].Value = name;
            e.Command.Parameters["@keeping_time"].Value = keepingTime;
            e.Command.Parameters["@price"].Value = price;

            e.Command.Parameters["@type_name"].Value = typeName;
            e.Command.Parameters["@prod_name"].Value = prodName;
            e.Command.Parameters["@prov_name"].Value = provName;

            Update();
        }

        private void Update()
        {
            ctData.DataBind();
            ctTypes.DataBind();
            ctProv.DataBind();
        }
    }
}