<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="lab4.Home" Theme="General"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light big-font">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link active" href="/Home.aspx">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Developer.aspx">О разработчике</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Form.aspx">Анкета</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Prediction.aspx">Предсказание</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ZodiacSign.aspx">Знак зодиака</a>
                    </li>
                </ul>
            </div>

        </nav>
        <div class="main-content">
            <h1>Добро пожаловать на сайт гороскопов!</h1>
            <asp:SiteMapDataSource runat="server" ID="MainWebSite"/>   
            <asp:TreeView runat="server" DataSourceId="MainWebSite"></asp:TreeView>
        </div>

        <div id="footer">
            <p class="copyright">©Artem Grigoryan, ONU, Odesa, 2017, email artem.grigoryan.j@gmail.com</p>
        </div>
    </form>
</body>
</html>
