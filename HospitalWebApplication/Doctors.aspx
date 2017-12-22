<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="HospitalWebApplication.WebForm2" Theme="Main"%>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div>
        <div>
            <h3>Enter specialization</h3>
            <asp:TextBox ID="ctrSpecTB" runat="server" />
            <asp:Button ID="ctrSearchB" runat="server" Text="Search" AutoPostBack="true"/>
        </div>
        <div>
            <asp:GridView CssClass="table" ID="DoctorsGV" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="DoctorsBySpecDataSource" AllowPaging="True" PageSize="25" AllowSorting="True" OnSelectedIndexChanged="SelectedIndexChanged" >
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
                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                    <asp:BoundField DataField="Specialization" HeaderText="Specialization" SortExpression="Specialization" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="DoctorsBySpecDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDataBaseConnectionString %>" SelectCommand="SELECT dbo.Doctor.Id, dbo.Doctor.FullName, dbo.Specialization.Name AS 'Specialization'
FROM dbo.Doctor JOIN
	dbo.Specialization ON Specialization.Id = Doctor.SpecializationId
WHERE dbo.Specialization.Name LIKE N'%' + @name + '%' ">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ctrSpecTB" ConvertEmptyStringToNull="False" Name="name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
     </div>
</asp:Content>
