using System;

namespace ASPLabs.Lab2
{
    public partial class Part6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                zodiakList.Items.Add("Овен");
                zodiakList.Items.Add("Телец");
                zodiakList.Items.Add("Близнецы");
                zodiakList.Items.Add("Рак");
                zodiakList.Items.Add("Лев");
                zodiakList.Items.Add("Дева");
                zodiakList.Items.Add("Весы");
                zodiakList.Items.Add("Скорпион");
                zodiakList.Items.Add("Стрелец");
                zodiakList.Items.Add("Козерог");
                zodiakList.Items.Add("Водолей");
                zodiakList.Items.Add("Рыбы");
            }
        }

        protected void zodiakList_SelectedIndexChanged(object sender, EventArgs e)
        {
            imageLabel.Text = "Вашему знаку соответствует следующее изображение:";
            switch (zodiakList.SelectedItem.ToString())
            {
                case "Овен":
                    imageHolder.ImageUrl = "~/zodiak/1.png";
                    break;
                case "Телец":
                    imageHolder.ImageUrl = "~/zodiak/2.png";
                    break;
                case "Близнецы":
                    imageHolder.ImageUrl = "~/zodiak/3.png";
                    break;
                case "Рак":
                    imageHolder.ImageUrl = "~/zodiak/4.png";
                    break;
                case "Лев":
                    imageHolder.ImageUrl = "~/zodiak/5.png";
                    break;
                case "Дева":
                    imageHolder.ImageUrl = "~/zodiak/6.png";
                    break;
                case "Весы":
                    imageHolder.ImageUrl = "~/zodiak/7.png";
                    break;
                case "Скорпион":
                    imageHolder.ImageUrl = "~/zodiak/8.png";
                    break;
                case "Стрелец":
                    imageHolder.ImageUrl = "~/zodiak/9.png";
                    break;
                case "Козерог":
                    imageHolder.ImageUrl = "~/zodiak/10.png";
                    break;
                case "Водолей":
                    imageHolder.ImageUrl = "~/zodiak/11.png";
                    break;
                case "Рыбы":
                    imageHolder.ImageUrl = "~/zodiak/12.png";
                    break;
            }
        }
    }
}