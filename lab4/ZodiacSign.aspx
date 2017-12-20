<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZodiacSign.aspx.cs" Inherits="lab4.ZodiacSign" Theme="General" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <nav class="navbar navbar-expand-lg navbar-dark bg-dark big-font">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/Home.aspx">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Developer.aspx">О разработчике</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Form.aspx">Анкета</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Prediction.aspx">Предсказание</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/ZodiacSign.aspx">Знак зодиака</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div>
            <asp:GridView CssClass="table" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZodiacDBConnectionString %>" SelectCommand="SELECT Id, Name, SUBSTRING(Description, 1, 20) + '...' AS 'Description' FROM ZodiacSign"></asp:SqlDataSource>
            <asp:DetailsView CssClass="table"  ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ZodiacDBConnectionString %>" SelectCommand="SELECT [Name], [Description] FROM [ZodiacSign] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
