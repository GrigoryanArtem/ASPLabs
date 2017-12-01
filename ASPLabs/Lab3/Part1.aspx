<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part1.aspx.cs" Inherits="ASPLabs.Lab3.Part1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreDataBaseConnectionString %>" DeleteCommand="DELETE FROM [groups] WHERE [Id] = @Id" InsertCommand="INSERT INTO [groups] ([name]) VALUES (@name)" SelectCommand="SELECT [Id], [name] FROM [groups]" UpdateCommand="UPDATE [groups] SET [name] = @name WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label1" runat="server" Text="New group name"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Width="100px" />
        </div>
    </form>
</body>
</html>
