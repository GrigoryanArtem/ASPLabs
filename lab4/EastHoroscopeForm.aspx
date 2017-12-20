<%@ Page Title="" Language="C#" MasterPageFile="~/EastHoroscope.Master" AutoEventWireup="true" CodeBehind="EastHoroscopeForm.aspx.cs" Inherits="lab4.EastHoroscopeForm" Theme="EastHoroscopeMasterPageTheme"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="card text-white col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/EastHoroscopeSigns/Rat.aspx">Крыса</a>
            <div class="card-body">
            <h4 class="card-title">Вода</h4>
            <img class="sign-image" src="/Imgs/EastHor/Rat.png" />
            </div>
        </div>
        <div class="card text-white col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/EastHoroscopeSigns/BullPage.aspx">Бык</a>
            <div class="card-body">
            <h4 class="card-title">Вода</h4>
            <img class="sign-image" src="/Imgs/EastHor/Bull.png" />
            </div>
        </div>
        <div class="card text-white col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/EastHoroscopeSigns/Tiger.aspx">Тигр</a>
            <div class="card-body">
            <h4 class="card-title">Дерево</h4>
            <img class="sign-image" src="/Imgs/EastHor/Tiger.png" />
            </div>
        </div>
        <div class="card text-white col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/EastHoroscopeSigns/Rabbit.aspx">Кролик</a>
            <div class="card-body">
            <h4 class="card-title"> Дерево</h4>
            <img class="sign-image" src="/Imgs/EastHor/Hare.png" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="card text-white col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/EastHoroscopeSigns/Dragon.aspx">Дракон</a>
            <div class="card-body">
            <h4 class="card-title">Дерево</h4>
            <img class="sign-image" src="/Imgs/EastHor/Dragon.png" />
            </div>
        </div>
        <div class="card text-white col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/EastHoroscopeSigns/Snake.aspx">Змея</a>
            <div class="card-body">
            <h4 class="card-title"> Огонь</h4>
            <img class="sign-image" src="/Imgs/EastHor/Snake.png" />
            </div>
        </div>
        <div class="card text-white col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/EastHoroscopeSigns/Horse.aspx">Лошадь</a>
            <div class="card-body">
            <h4 class="card-title">Огонь</h4>
            <img class="sign-image" src="/Imgs/EastHor/Horse.png" />
                </div>
        </div>
        <div class="card text-white col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/EastHoroscopeSigns/Goat.aspx">Коза</a>
            <div class="card-body">
            <h4 class="card-title">Огонь</h4>
            <img class="sign-image" src="/Imgs/EastHor/Goat.png" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="card text-white col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/EastHoroscopeSigns/Monkey.aspx">Обезьяна</a>
            <div class="card-body">
            <h4 class="card-title"> Метал</h4>
            <img class="sign-image" src="/Imgs/EastHor/Monkey.png" />
            </div>
        </div>
        <div class="card text-white col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/EastHoroscopeSigns/Rooster.aspx">Петух</a>
            <div class="card-body">
            <h4 class="card-title">Метал</h4>
            <img class="sign-image" src="/Imgs/EastHor/Cock.png" />
            </div>
        </div>
        <div class="card text-white col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/EastHoroscopeSigns/Dog.aspx">Собака</a>
            <div class="card-body">
            <h4 class="card-title">Земля</h4>
            <img class="sign-image" src="/Imgs/EastHor/Dog.png" />
            </div>
        </div>
        <div class="card text-white col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/EastHoroscopeSigns/Pig.aspx">Свинья</a>
            <div class="card-body">
            <h4 class="card-title">Земля</h4>
            <img class="sign-image" src="/Imgs/EastHor/Pig.png" />
            </div>
        </div>
    </div>
</asp:Content>
