<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Developer.aspx.cs" Inherits="lab4.Developer" Theme="General"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark big-font">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/Home.aspx">Главная</a>
                    </li>
                    <li class="nav-item active">
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
        <div class="row">
            <div class="offset-lg-2 col-lg-9" >
                <div id="content" >
                <div class="main-content">
                    <div class="row">
                        <div class="jumbotron ">
                          <h1 class="display-3">Артем Григорян</h1>
                            
                            <hr class="my-4">
                            <p class="lead"> Номер телефона: +380 68 671 02 72 /  artem.grigoryan.j@gmail.com</p>
                            <p class="lead"> Мой профиль: github.com/GrigoryanArtem</p>
                                                
                        </div>
                    </div>
                
                </div>
             </div>
            </div>
            

        </div>

        <div id="footer">
            <p class="copyright">©Artem Grigoryan, ONU, Odesa, 2017, email artem.grigoryan.j@gmail.com</p>
        </div>
    </form>
</body>
</html>
