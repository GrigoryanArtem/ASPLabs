<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part2.aspx.cs" Inherits="ASPLabs.Lab5.Part2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox 
                ID="ctFirstOperator" 
                runat="server" />
            <p />
            <asp:TextBox 
                ID="ctSecondOperator" 
                runat="server" />
            <p />
            <asp:Button 
                ID="ctExecuteButton"
                runat="server"
                Text="Multiply"
                OnClick="ExecuteButton_Click" />
            <p />
            <asp:Label ID="ctAnswerLabel" runat="server" />
        </div>
    </form>
</body>
</html>
