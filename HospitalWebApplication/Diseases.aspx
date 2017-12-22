<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Diseases.aspx.cs" Inherits="HospitalWebApplication.WebForm3" Theme="Main"%>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div>
        <div>
            <h3>Enter diseas name</h3>
            <asp:TextBox ID="ctrSpecTB" runat="server" />
            <asp:Button ID="ctrSearchB" runat="server" Text="Search" AutoPostBack="true"/>
        </div>
        <div>
            <asp:GridView CssClass="table" ID="DoctorsGV" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"  DataSourceID="DiseasesByNameDataSource" AllowPaging="True" PageSize="25" OnSelectedIndexChanged="DoctorsGV_SelectedIndexChanged" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField Visible="false" DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" ReadOnly="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="DiseasesByNameDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDataBaseConnectionString %>" SelectCommand="SELECT dbo.Disease.Id, dbo.Disease.Name, SUBSTRING(dbo.Disease.Description, 1, 25) + '...' AS 'Description'
FROM dbo.Disease
WHERE dbo.Disease.Name LIKE '%' +@name + '%'">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ctrSpecTB" ConvertEmptyStringToNull="False" Name="name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
     </div>
</asp:Content>
