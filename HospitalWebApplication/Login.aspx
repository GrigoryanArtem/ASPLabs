<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HospitalWebApplication.WebForm5" Theme="Main"%>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div>
        <div>
            Login 
            <asp:TextBox ID="ctrLoginTB" runat="server" />
            <br />
            Password 
            <asp:TextBox ID="ctrPasswordTB" TextMode="Password" runat="server" />
            <br />
            <asp:Button ID="LoginButton" Text="Login" runat="server" OnClick="LoginButton_Click" />
            <asp:Button ID="RegistrationB" Text="Registration" runat="server" OnClick="RegistrationButton_Click"/>
            <br />
            <asp:Label ID="ErrorLabel" runat="server" Text="Логин или пароль введены не правильно!" ForeColor="Red" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>
