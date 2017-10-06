<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part1.aspx.cs" Inherits="ASPLabs.Lab2.Part1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="pPart1" runat="server">
        <div>
            Как Вас зовут?<br />
            <br />
            <asp:TextBox
                Width="200px"
                ID="inputNameTextBox"
                runat="server" />

            <br /><br />
            <asp:Button
                ID="answerButton"
                OnClick="answerButton_Click"
                Text="Ответ"
                runat="server" />

            <br /><br />
            <asp:Label
                ID="greetingsLabel"
                runat="server" />
        </div>
    </form>
</body>
</html>
