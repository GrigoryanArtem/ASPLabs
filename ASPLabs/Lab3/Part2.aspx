<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part2.aspx.cs" Inherits="ASPLabs.Lab3.Part2" %>

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
                    <asp:BoundField DataField="zachetka" HeaderText="zachetka" SortExpression="zachetka" />
                    <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="patronymic" HeaderText="patronymic" SortExpression="patronymic" />
                    <asp:BoundField DataField="birthdate" HeaderText="birthdate" SortExpression="birthdate" />
                    <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
                    <asp:BoundField DataField="id_group" HeaderText="id_group" SortExpression="id_group" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreDataBaseConnectionString %>" DeleteCommand="DELETE FROM [students] WHERE [Id] = @Id" InsertCommand="INSERT INTO [students] ([zachetka], [surname], [name], [patronymic], [birthdate], [tel], [id_group]) VALUES (@zachetka, @surname, @name, @patronymic, @birthdate, @tel, @id_group)" SelectCommand="SELECT [Id], [zachetka], [surname], [name], [patronymic], [birthdate], [tel], [id_group] FROM [students]" UpdateCommand="UPDATE [students] SET [zachetka] = @zachetka, [surname] = @surname, [name] = @name, [patronymic] = @patronymic, [birthdate] = @birthdate, [tel] = @tel, [id_group] = @id_group WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="zachetka" Type="String" />
                <asp:Parameter Name="surname" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="patronymic" Type="String" />
                <asp:Parameter Name="birthdate" Type="DateTime" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="id_group" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="zachetka" Type="String" />
                <asp:Parameter Name="surname" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="patronymic" Type="String" />
                <asp:Parameter Name="birthdate" Type="DateTime" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="id_group" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" Text="New zachetka"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Width="100px" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="New surname"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="New name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="New patronymic"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="New birthdate"></asp:Label>
&nbsp;<asp:Calendar ID="Calendar" runat="server" Height="114px" Width="239px"></asp:Calendar>
        <br />
        <asp:Label ID="Label6" runat="server" Text="New telephone"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="New id_group"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlGroups" DataTextField="name" DataValueField="Id" Height="16px" Width="200px">
        </asp:DropDownList>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlGroups" EmptyDataText="Нет записей для отображения." Visible="False">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlGroups" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreDataBaseConnectionString %>" DeleteCommand="DELETE FROM [groups] WHERE [Id] = @Id" InsertCommand="INSERT INTO [groups] ([name]) VALUES (@name)" SelectCommand="SELECT [Id], [name] FROM [groups]" UpdateCommand="UPDATE [groups] SET [name] = @name WHERE [Id] = @Id">
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
    </form>
</body>
</html>
