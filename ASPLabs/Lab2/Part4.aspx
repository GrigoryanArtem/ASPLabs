<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part4.aspx.cs" Inherits="ASPLabs.Lab2.Part4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form 
        id="pPart4"
        runat="server">
        <div>
             Сколько ты прожил?
            <br /> <br />
            Как тебя зовут&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox 
                ID="nameTextBox" 
                Width="200px" 
                runat="server"/>

            <br />
            Сколько тебе лет&nbsp;
            <asp:TextBox 
                ID="ageTextBox"  
                Width="200px" 
                runat="server"></asp:TextBox>

            <br /> <br />
            <asp:Button 
                ID="answerButton" 
                OnClick="answerButton_Click" 
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
