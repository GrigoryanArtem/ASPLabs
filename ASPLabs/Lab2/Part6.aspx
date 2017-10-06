<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part6.aspx.cs" Inherits="ASPLabs.Lab2.Part6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form 
        id="pPart6"
        runat="server">
        <div>
            Выберите свой знак зодиака
            <br /><br />
            <asp:DropDownList 
                ID="zodiakList" 
                Height="29px"
                OnSelectedIndexChanged="zodiakList_SelectedIndexChanged" 
                Width="200px" 
                AutoPostBack="True" 
                runat="server" />

            <br /><br />
            <asp:Label 
                ID="imageLabel" 
                runat="server" />

            <br /><br />
            <asp:Image 
                ID="imageHolder" 
                Height="300px" Width="300px"
                runat="server"/>
            </div>
    </form>
</body>
</html>
