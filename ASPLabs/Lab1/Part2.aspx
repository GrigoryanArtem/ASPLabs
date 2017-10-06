<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part2.aspx.cs" Inherits="ASPLabs.Lab1.Part2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form 
        id="pPart2" 
        runat="server">

        <div>
            <asp:PlaceHolder
                ID="phTextBoxes"
                runat="server" />

            <p />
            <asp:Button
                runat="server"
                OnClick="ButtonClick"
                Text="Click" CssClass="button" />
            <p />
            <asp:Label
                ID="lAnswer"
                runat="server" />
        </div>
    </form>
</body>
</html>
