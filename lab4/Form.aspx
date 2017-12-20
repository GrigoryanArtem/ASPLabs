<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="lab4.Form" Theme="General" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                    <li class="nav-item active">
                        <a class="nav-link" href="/Form.aspx">Анкета</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Prediction.aspx">Предсказание</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ZodiacSign.aspx">Знак зодиака</a>
                    </li>
                </ul>
            </div>
        </nav>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ShowFooter="True" PageSize="20" CssClass="table">
            <Columns>
                <asp:TemplateField HeaderText="FullName" SortExpression="FullName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FullName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="ctrName" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("FullName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PhoneNumber" SortExpression="PhoneNumber">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="ctrPhoneNumber" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="ctrEmail" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DateOfBirthday" SortExpression="DateOfBirthday">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DateOfBirthday") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="ctrDateOfB" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("DateOfBirthday") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ZodiacSign" SortExpression="ZodiacSign">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ZodiacSign") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZodiacDBConnectionString %>" SelectCommand="SELECT [Name] FROM [ZodiacSign]"></asp:SqlDataSource>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("ZodiacSign") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZodiacDBConnectionString %>" SelectCommand="SELECT [User].FullName, [User].PhoneNumber, [User].Email, [User].DateOfBirthday, ZodiacSign.Name AS 'ZodiacSign' FROM [User] INNER JOIN ZodiacSign ON [User].ZodiacSignId = ZodiacSign.Id" InsertCommand="INSERT dbo.[User] (
    ZodiacSignId,
    FullName,
    PhoneNumber,
    Email,
    DateOfBirthday
)
VALUES (   
(SELECT Id FROM dbo.ZodiacSign WHERE dbo.ZodiacSign.Name = @zodiac_name),
@full_name,      
@phone_number,      
@email,     
@date )" OnInserting="SqlDataSource1_Inserting">
            <InsertParameters>
                <asp:Parameter Name="zodiac_name" />
                <asp:Parameter Name="full_name" />
                <asp:Parameter Name="phone_number" />
                <asp:Parameter Name="email" />
                <asp:Parameter Name="date" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Add" AutoPostBack="true" OnClick="Button1_Click"/>
    </form>
</body>
</html>
