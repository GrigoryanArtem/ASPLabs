<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pacient.aspx.cs" Inherits="HospitalWebApplication.WebForm9" Theme="Main"%>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div>
        <h1>
            <asp:Label ID="ctrNameL" runat="server" Text="" />
        </h1>

        Gender:
        <asp:Label ID="ctrGenderL" runat="server" Text="" />
        <br />
        Phone number:
        <asp:Label ID="ctrPhoneNumber" runat="server" Text="" />
        <br />
        Date of birth
        <asp:Label ID="ctrDateOfBirth" runat="server" Text="" />
        <br />

        Addresses:
        <asp:GridView CssClass="table" ID="AddressesGV" runat="server" AutoGenerateColumns="False" DataSourceID="AddressesDataSource" GridLines="None" ShowHeader="False" >
            <Columns>
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="AddressesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDataBaseConnectionString %>" SelectCommand="SELECT PacientAddress.Address FROM Pacient INNER JOIN PacientDetails ON Pacient.Id = PacientDetails.Id INNER JOIN PacientAddress ON PacientDetails.Id = PacientAddress.PacientDetailsId WHERE (Pacient.Id = @Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="Id" />
            </SelectParameters>
        </asp:SqlDataSource>

        Diseases:
        <asp:GridView CssClass="table" ID="DiseasGV" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="DiseasesDataSource" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField Visible="false" DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:TemplateField HeaderText="Disease" SortExpression="Disease">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Disease") %>' ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="Label1" runat="server" Text='<%# Bind("Disease") %>' OnClick="Disease_Click" ForeColor="Black"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Doctor" SortExpression="Doctor">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Doctor") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="Label2" runat="server" Text='<%# Bind("Doctor") %>' OnClick="Label2_Click" ForeColor="Black" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" >
            <Fields>
                <asp:BoundField DataField="Disease" HeaderText="Disease" SortExpression="Disease" />
                <asp:BoundField DataField="Doctor" HeaderText="Doctor" SortExpression="Doctor" />
                <asp:BoundField DataField="Open date" HeaderText="Open date" SortExpression="Open date" />
                <asp:BoundField DataField="Close date" HeaderText="Close date" SortExpression="Close date" />
                <asp:BoundField DataField="Advice" HeaderText="Advice" SortExpression="Advice" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDataBaseConnectionString %>" SelectCommand="SELECT dbo.Disease.Name AS 'Disease', dbo.Doctor.FullName AS 'Doctor', OpenDate AS 'Open date', CloseDate AS 'Close date', Advice   AS 'Advice'
FROM [dbo].Pacient JOIN dbo.PacientDetails ON PacientDetails.Id = Pacient.Id
	JOIN dbo.DiseaseBook ON DiseaseBook.PacientDetailsId = PacientDetails.Id
	JOIN dbo.Doctor ON Doctor.Id = DiseaseBook.DoctorId
	JOIN dbo.Disease ON Disease.Id = DiseaseBook.DiseaseId
WHERE dbo.DiseaseBook.Id = @Id">
            <SelectParameters>
                <asp:ControlParameter ControlID="DiseasGV" Name="Id" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="DiseasesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDataBaseConnectionString %>" SelectCommand="SELECT DiseaseBook.Id, dbo.Disease.Name AS 'Disease', dbo.Doctor.FullName AS 'Doctor'
FROM [dbo].Pacient JOIN dbo.PacientDetails ON PacientDetails.Id = Pacient.Id
JOIN dbo.DiseaseBook ON DiseaseBook.PacientDetailsId = PacientDetails.Id
JOIN dbo.Doctor ON Doctor.Id = DiseaseBook.DoctorId
JOIN dbo.Disease ON Disease.Id = DiseaseBook.DiseaseId
WHERE dbo.Pacient.Id = @id">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
