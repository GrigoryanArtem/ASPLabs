<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part5.aspx.cs" Inherits="ASPLabs.Lab2.Part5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form 
        id="pPart5" 
        runat="server">
        <div>
            <asp:CheckBoxList 
                ID="CheckBoxList" 
                AutoPostBack="True"
                Height="70px" 
                OnSelectedIndexChanged="CheckBoxList_SelectedIndexChanged"
                runat="server">

                <asp:ListItem>English</asp:ListItem>
                <asp:ListItem>Русский</asp:ListItem>
            </asp:CheckBoxList>

            <br />
            <asp:Label 
                ID="helloLabel" 
                runat="server" />
        </div>
    </form>
</body>
</html>
