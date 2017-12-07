<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part3.aspx.cs" Inherits="ASPLabs.Lab5.Part3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form 
        id="pPart3" 
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
