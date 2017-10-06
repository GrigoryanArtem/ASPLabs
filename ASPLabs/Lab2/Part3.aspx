<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part3.aspx.cs" Inherits="ASPLabs.Lab2.Part3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form 
        id="pPart3" 
        runat="server">
        <div>
            Как вас зовут?
            <br /> <br />
            <asp:TextBox
                ID="inputTextBox"
                Width="200px"
                runat="server" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button
                ID="answerButton"
                OnClick="AnswerButtonClick"
                Text="Ответить"
                runat="server" />

            <br /> <br />
            <asp:Label 
                ID="answerLabel" 
                runat="server" />
        </div>
    </form>
</body>
</html>
