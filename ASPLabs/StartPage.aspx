<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="ASPLabs.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form 
        id="pStartPage" 
        runat="server">

        <div>
            <asp:DropDownList
                ID="dlLabs" 
                runat="server" />

            <p />
            <asp:Button
                OnClick="ButtonClick"
                Text="Select"
                runat="server" />
        </div>
    </form>
</body>
</html>
