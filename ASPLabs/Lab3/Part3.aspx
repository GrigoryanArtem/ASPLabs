<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part3.aspx.cs" Inherits="ASPLabs.Lab3.Part3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <style>
        .myGridClass {
            width: 100%;
            background-color: #fff;
            margin: 5px 0 10px 0;
            border: solid 1px #525252;
            border-collapse: collapse;
        }

        .myGridClass td {
            padding: 2px;
            border: solid 1px #c1c1c1;
            color: #717171;
        }


        .myGridClass th {
            padding: 4px 2px;
            color: #fff;
            background: #caffae;
            border: solid 1px #525252;
            font-size: 0.9em;
        }

        .footer{
            padding: 4px 2px;
            color: #fff;
            background: #caffae;
            border: solid 1px #525252;
            font-size: 0.9em;
        }

        .myGridClass .myAltRowClass {
            background: #fcfcfc repeat-x top;
        }

        .myGridClass .myPagerClass {
            background: #424242;
        }

        .myGridClass .myPagerClass table {
            margin: 5px 0;
        }

        .myGridClass .myPagerClass td {
            border-width: 0;
            padding: 0 6px;
            border-left: solid 1px #666;
            font-weight: bold;
            color: #fff;
            line-height: 12px;
        }

        .myGridClass .myPagerClass a {
            color: #666;
            text-decoration: none;
        }

        .myGridClass .myPagerClass a:hover {
            color: #000;
            text-decoration: none;
        }

        .btn {
            -webkit-border-radius: 6;
            -moz-border-radius: 6;
            border-radius: 6px;
            font-family: Courier New;
            color: #000000;
            font-size: 16px;
            background: #fafafa;
            padding: 10px 20px 10px 20px;
            border: solid #757575 2px;
            text-decoration: none;
        }

        .btn:hover {
            background: #c2d8ff;
            background-image: -webkit-linear-gradient(top, #c2d8ff, #f2f5c9);
            background-image: -moz-linear-gradient(top, #c2d8ff, #f2f5c9);
            background-image: -ms-linear-gradient(top, #c2d8ff, #f2f5c9);
            background-image: -o-linear-gradient(top, #c2d8ff, #f2f5c9);
            background-image: linear-gradient(to bottom, #c2d8ff, #f2f5c9);
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:DropDownList
                    ID="ctDropDownList"
                    runat="server" AutoPostBack="True" DataSourceID="sqlDepartments" DataTextField="Name" DataValueField="Name" />

                <asp:SqlDataSource ID="sqlDepartments" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreDataBaseConnectionString %>" SelectCommand="SELECT [Name] FROM [Departments]"></asp:SqlDataSource>

                <asp:Button
                    AutoPostBack="true"
                    Text="Update"
                    runat="server"
                    CssClass="btn" 
                    OnClick="Update_Click" />
            </div>
        </div>
        <div
            style="overflow: hidden;">
            <div
                style="width: 100%;">

                <div
                    style="float: left;
                    width: 60%;
                    padding: 10px" >
                    <asp:GridView
                        align="center"
                        ID="ctData"
                        runat="server"
                        DataKeyNames="Name"
                        CssClass="myGridClass" DataSourceID="Goods" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" PageSize="25" ShowFooter="True">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <FooterTemplate>
                                    <asp:Button 
                                        ID="btnAddGood" 
                                        runat="server" 
                                        Text="Add" 
                                        Width="100%"
                                        Height="100%"
                                        Font-Bold="True"
                                        OnClick="Add_Click"/>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" Height="100%" Width="100%"></asp:Button>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox 
                                        ID="tbxGoodName" 
                                        runat="server"
                                        Height="100%" Width="100%"></asp:TextBox>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Provaider" SortExpression="Provaider">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Provaider") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList ID="ddProvs" runat="server" DataSourceID="Provs" DataTextField="FullName" DataValueField="FullName" Height="100%" Width="100%">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="Provs" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreDataBaseConnectionString %>" SelectCommand="SELECT [FullName] FROM [Provaider]"></asp:SqlDataSource>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Provaider") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Producer" SortExpression="Producer">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Producer") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList ID="ddProds" runat="server" DataSourceID="Prods" DataTextField="Name" DataValueField="Name" Height="100%" Width="100%">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="Prods" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreDataBaseConnectionString %>" SelectCommand="SELECT [Name] FROM [Producers]"></asp:SqlDataSource>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Producer") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Type" SortExpression="Type">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Type") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList ID="ddTypes" runat="server" DataSourceID="Typs" DataTextField="Name" DataValueField="Name" Height="100%" Width="100%">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="Typs" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreDataBaseConnectionString %>" SelectCommand="SELECT [Name] FROM [Types]"></asp:SqlDataSource>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Creation date" SortExpression="Creation date">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("[Creation date]") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("[Creation date]") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Keeping time" SortExpression="Keeping time">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("[Keeping time]") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txbKeepingTime" runat="server" Height="100%" Width="100%"></asp:TextBox>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("[Keeping time]") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price" SortExpression="Price">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txbPrice" runat="server" Height="100%" Width="100%"></asp:TextBox>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle CssClass="foot" />
                        <PagerStyle CssClass="muPagerClass" />

                    </asp:GridView>
                </div>
                <div
                    style="float: left;
                    width: 15%;
                    padding: 10px">
                    <asp:GridView CssClass="myGridClass" ID="ctTypes" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="Types" PageSize="25" DataKeyNames="Type">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" Height="100%" Width="100%"></asp:Button>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        </Columns>
                    </asp:GridView>
                </div>

                 <div
                    style="float: left;
                    width: 15%;
                    padding: 10px">

                    <asp:GridView CssClass="myGridClass" ID="ctProv" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="Provaiders" PageSize="25" >
                        <Columns>
                            <asp:BoundField DataField="Provaider" HeaderText="Provaider" SortExpression="Provaider" />
                        </Columns>
                     </asp:GridView>
                     <asp:SqlDataSource ID="Provaiders" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreDataBaseConnectionString %>" SelectCommand="SELECT Provaider.FullName AS Provaider FROM Departments INNER JOIN Goods ON Departments.ID = Goods.DepartmentID INNER JOIN Provaider ON Goods.ProvaiderID = Provaider.ID WHERE (Departments.Name = @name) GROUP BY Provaider.FullName">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="ctDropDownList" Name="name" PropertyName="SelectedValue" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                </div>

                <asp:SqlDataSource ID="Types" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreDataBaseConnectionString %>" SelectCommand="SELECT Types.Name AS [Type] FROM Goods INNER JOIN Types ON Goods.TypeID = Types.ID INNER JOIN Departments ON Goods.DepartmentID = Departments.ID WHERE (Departments.Name = @Name) GROUP BY Types.Name" DeleteCommand="DELETE FROM Goods FROM Goods INNER JOIN Departments ON Goods.DepartmentID = Departments.ID INNER JOIN Types ON Goods.TypeID = Types.ID WHERE (Departments.Name = @name) AND (Types.Name = @Type)">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="ctDropDownList" Name="name" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ctTypes" Name="Type" PropertyName="SelectedDataKey" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ctDropDownList" Name="name" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="Goods" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreDataBaseConnectionString %>" SelectCommand="SELECT g.Name, Provaider.FullName AS Provaider, Producers.Name AS Producer, Types.Name AS Type, g.CreationDate AS [Creation date], g.KeepingTime AS [Keeping time], g.Price FROM Goods AS g INNER JOIN Departments AS d ON g.DepartmentID = d.ID INNER JOIN Producers ON g.ProducerID = Producers.ID INNER JOIN Provaider ON g.ProvaiderID = Provaider.ID INNER JOIN Types ON g.TypeID = Types.ID WHERE (d.Name = @Name)" DeleteCommand="DELETE FROM Goods WHERE (Name = @name)" InsertCommand="INSERT INTO dbo.Goods ( DepartmentID, TypeID, ProducerID, ProvaiderID, Name, CreationDate, KeepingTime, Price ) VALUES ( (SELECT dbo.Departments.ID FROM dbo.Departments WHERE dbo.Departments.Name = @dep_name), (SELECT dbo.Types.ID FROM dbo.Types WHERE dbo.Types.Name = @type_name), (SELECT dbo.Producers.ID FROM dbo.Producers WHERE dbo.Producers.Name = @prod_name), (SELECT dbo.Provaider.ID FROM dbo.Provaider WHERE dbo.Provaider.FullName = @prov_name), @name, GETDATE(), @keeping_time, @price )" OnInserting="Goods_Inserting">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="ctData" Name="name" PropertyName="SelectedDataKey"/>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="ctDropDownList" PropertyName="SelectedValue" Name="dep_name" />
                        <asp:Parameter  Name="name" />
                        <asp:Parameter  Name="keeping_time" />
                        <asp:Parameter  Name="price" />
                        <asp:Parameter  Name="type_name" />
                        <asp:Parameter  Name="prod_name" />
                        <asp:Parameter  Name="prov_name" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ctDropDownList" Name="Name" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
