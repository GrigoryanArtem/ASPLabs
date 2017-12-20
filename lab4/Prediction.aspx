<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prediction.aspx.cs" Inherits="lab4.Prediction"  Theme="General"%>

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
                    <li class="nav-item">
                        <a class="nav-link" href="/Form.aspx">Анкета</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/Prediction.aspx">Предсказание</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ZodiacSign.aspx">Знак зодиака</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div>
            <div class="inlineBlock">
            Начальная дата:
            <asp:Calendar ID="ctrSCalendar" runat="server"/>
                </div>
            <div class="inlineBlock">
            Конечная дата: 
            <asp:Calendar ID="ctrECalendar" runat="server" />
            </div>
            <br />
        </div>

        <div>
            <asp:GridView CssClass="table" UseAccessibleHeader="true" DataKeyNames="Id" ID="GridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="PredictionsDataSource">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Zodiac" HeaderText="Zodiac" SortExpression="Zodiac" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Prediction" HeaderText="Prediction" ReadOnly="True" SortExpression="Prediction" /> 
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="PredictionsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ZodiacDBConnectionString %>" SelectCommand="SELECT ZodiacSign.Name AS 'Zodiac', CAST(Forecast.Date AS date) AS 'Date', SUBSTRING(Forecast.Text, 1, 20) + '...' AS 'Prediction', Forecast.Id FROM ZodiacSign INNER JOIN Forecast ON ZodiacSign.Id = Forecast.Id WHERE (Forecast.Date &gt; @s_date) AND (Forecast.Date &lt; @e_date)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ctrSCalendar" Name="s_date" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="ctrECalendar" Name="e_date" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <div>
            <asp:DetailsView  CssClass="table" ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateRows="False">
                <Fields>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZodiacDBConnectionString %>" SelectCommand="SELECT [Date], [Text] FROM [Forecast] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
