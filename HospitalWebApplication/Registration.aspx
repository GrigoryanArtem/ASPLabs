<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="HospitalWebApplication.WebForm7" Theme="Main"%>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div>
        Login:
        <br />
        <asp:TextBox ID="ctrLoginTB" runat="server" />
        <br />
        Password:
        <br />
        <asp:TextBox TextMode="Password" ID="ctrPassword1TB" runat="server" />
        <br />
        Confirm password:
        <br />
        <asp:TextBox TextMode="Password" ID="ctrPassword2TB" runat="server" />
        <br />
        <asp:Button ID="ctrCreateUserB" runat="server" Text="Create" OnClick="Create_Click" />
    </div>
</asp:Content>
