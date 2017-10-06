<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part1.aspx.cs" Inherits="ASPLabs.Lab1.Part1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form 
        id="pPart1" 
        runat="server">

        <div>
            <table>
                <tr>
                    <td >Principal</td>
                    <td>
                        <asp:TextBox
                            ID="tbPrincipal"
                            runat="server"
                            Width="370px" />
                    </td>
                </tr>
                <tr>
                    <td >Rate (percent)</td>
                    <td>
                        <asp:TextBox
                            ID="tbRate"
                            runat="server"
                            Width="370px" />
                    </td>
                </tr>
                <tr>
                    <td >Term (months)</td>
                    <td>
                        <asp:TextBox
                            ID="tbTerm"
                            runat="server"
                            Width="370px" />
                    </td>
                </tr>
                <tr>
                    <td >&nbsp;</td>
                    <td>
                        <asp:Button
                            ID="bPaymentButton"
                            runat="server"
                            Text="Compute Payment"
                            Width="130px"
                            OnClick="PaymentButtonClick" />
                    </td>
                </tr>
            </table>

            <h3>
                <asp:Label 
                    ID="lOutput" 
                    runat="server" />
            </h3>
        </div>
    </form>
</body>
</html>
