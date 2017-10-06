<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part2.aspx.cs" Inherits="ASPLabs.Lab2.Part2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form 
        id="pPart2" 
        runat="server">

        <div>
            Кто ты

            <br /><br />
            <asp:DropDownList 
                ID="genderList" 
                AutoPostBack="True"
                OnSelectedIndexChanged="genderList_SelectedIndexChanged" 
                runat="server" />

            <br /> <br />
            <asp:Label 
                ID="answerLabel" 
                runat="server" />
        </div>
    </form>
</body>
</html>
