<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PacientsByAddress.aspx.cs" Inherits="HospitalWebApplication.WebForm10" Theme="Main"%>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div>
        <div>
            <h3>Enter patient address</h3>
            <asp:TextBox ID="ctrSpecTB" runat="server" />
            <asp:Button ID="ctrSearchB" runat="server" Text="Search" AutoPostBack="true"/>
        </div>
        <div>
            <asp:GridView CssClass="table" ID="ctrPatientsGV" runat="server" DataSourceID="PatientsDataSource" AutoGenerateColumns="False" DataKeyNames="Id" AllowPaging="True" PageSize="25" AllowSorting="True" OnSelectedIndexChanged="ctrPatientsGV_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id" Visible="False">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Full name" HeaderText="Full name" SortExpression="Full name" />
                    <asp:BoundField DataField="Column1" HeaderText="Column1" ReadOnly="True" SortExpression="Column1" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="PatientsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDataBaseConnectionString %>" SelectCommand="SELECT Pacient.Id, Pacient.FullName AS 'Full name', IIF(Gender = 1, 'Male', 'Female') FROM Pacient INNER JOIN PacientDetails ON Pacient.Id = PacientDetails.Id INNER JOIN PacientAddress ON PacientDetails.Id = PacientAddress.PacientDetailsId WHERE (PacientAddress.Address = @address)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ctrSpecTB" Name="address" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
     </div>
</asp:Content>
