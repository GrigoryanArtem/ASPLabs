<%@ Page Title="" Language="C#" MasterPageFile="~/WestHoroscope.Master" Theme="WestHoroscopeMasterPageTheme" AutoEventWireup="true" CodeBehind="WestHoroscopeForm.aspx.cs" Inherits="lab4.WestHoroscopeForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
        <div class="card text-black col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/WestHoroscopeSigns/Aquarius.aspx">Водолей</a>
            <div class="card-body">
            <h4 class="card-title">Дерево</h4>
            <img class="sign-image" src="/Imgs/WestHor/11.jpg" />
            </div>
        </div>
        <div class="card text-black col-lg-3" style="max-width: 20rem;">
                <a class="card-header" href="/WestHoroscopeSigns/Pisces.aspx">Рыбы</a>
            <div class="card-body">
            <h4 class="card-title">Дерево</h4>
            <img class="sign-image" src="/Imgs/WestHor/12.jpg" />
            </div>
        </div>
        <div class="card text-black col-lg-3" style="max-width: 20rem;">
                <a class="card-header" href="/WestHoroscopeSigns/Aries.aspx">Овен</a>
            <div class="card-body">
            <h4 class="card-title">Дерево</h4>
            <img class="sign-image" src="/Imgs/WestHor/1.jpg" />
            </div>
        </div>
        <div class="card text-black col-lg-3" style="max-width: 20rem;">
                <a class="card-header" href="/WestHoroscopeSigns/Taurus.aspx">Телец</a>
            <div class="card-body">
            <h4 class="card-title"> Огонь</h4>
            <img class="sign-image" src="/Imgs/WestHor/2.jpg" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="card text-black col-lg-3" style="max-width: 20rem;">
                <a class="card-header" href="/WestHoroscopeSigns/Gemini.aspx">Близнецы</a>
            <div class="card-body">
            <h4 class="card-title">Огонь</h4>
            <img class="sign-image" src="/Imgs/WestHor/3.jpg" />
            </div>
        </div>
        <div class="card text-black col-lg-3" style="max-width: 20rem;">
                <a class="card-header" href="/WestHoroscopeSigns/Cancer.aspx">Рак</a>
            <div class="card-body">
            <h4 class="card-title"> Огонь</h4>
            <img class="sign-image" src="/Imgs/WestHor/4.jpg" />
            </div>
        </div>
        <div class="card text-black col-lg-3" style="max-width: 20rem;">
                <a class="card-header" href="/WestHoroscopeSigns/Leo.aspx">Лев</a>
            <div class="card-body">
            <h4 class="card-title">Метал</h4>
            <img class="sign-image" src="/Imgs/WestHor/5.jpg" />
            </div>
        </div>
        <div class="card text-black col-lg-3" style="max-width: 20rem;">
                <a class="card-header" href="/WestHoroscopeSigns/Virgo.aspx">Девы</a>
            <div class="card-body">
            <h4 class="card-title">Метал</h4>
            <img class="sign-image" src="/Imgs/WestHor/6.jpg" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="card text-black col-lg-3" style="max-width: 20rem;">
                <a class="card-header" href="/WestHoroscopeSigns/Libro.aspx">Весы</a>
            <div class="card-body">
            <h4 class="card-title"> Метал</h4>
            <img class="sign-image" src="/Imgs/WestHor/7.jpg" />
            </div>
        </div>
        <div class="card text-black col-lg-3" style="max-width: 20rem;">
                <a class="card-header" href="/WestHoroscopeSigns/Scorpio.aspx">Скорпион</a>
            <div class="card-body">
            <h4 class="card-title"> Вода</h4>
            <img class="sign-image" src="/Imgs/WestHor/8.jpg" />
            </div>
        </div>
        <div class="card text-black col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/WestHoroscopeSigns/Sagittarius.aspx">Стрелец</a>
            <div class="card-body">
            <h4 class="card-title">Вода</h4>
            <img class="sign-image" src="/Imgs/WestHor/9.jpg" />
            </div>
        </div>
        <div class="card text-black col-lg-3" style="max-width: 20rem;">
            <a class="card-header" href="/WestHoroscopeSigns/Capricorn.aspx">Козерог</a>
            <div class="card-body">
            <h4 class="card-title"> Вода</h4>
            <img class="sign-image" src="/Imgs/WestHor/10.jpg" />
            </div>
        </div>
    </div>
</asp:Content>
