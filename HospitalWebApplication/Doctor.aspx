<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="HospitalWebApplication.WebForm11" Theme="Main"%>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div>
        <div>
            <h1>
                <asp:Label ID="ctrNameL" runat="server" Text="" />
            </h1>
            <h2>
                <asp:Label ID="ctrSpecL" runat="server" Text="" />
            </h2>
        </div>


        <div>
            <h2>Patients</h2>
            <asp:GridView CssClass="table" ID="PatientsGV" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="PatientsDataSource" AllowPaging="True" AllowSorting="True" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField Visible="false" DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:TemplateField HeaderText="Pacient" SortExpression="Pacient">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Pacient") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="Label2" runat="server" Text='<%# Bind("Pacient") %>' OnClick="Label2_Click" ForeColor="Black"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Disease" SortExpression="Disease">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Disease") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="Label1" runat="server" Text='<%# Bind("Disease") %>' OnClick="Label1_Click" ForeColor="Black"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" ReadOnly="True" />
                </Columns>
            </asp:GridView>

            <asp:DetailsView CssClass="table" ID="DiseaseDV" runat="server" AutoGenerateRows="False" DataSourceID="DiseasDataSource" >
                <Fields>
                    <asp:BoundField DataField="Patient" HeaderText="Patient" SortExpression="Patient" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" ReadOnly="True" SortExpression="Gender" />
                    <asp:BoundField DataField="Phone number" HeaderText="Phone number" SortExpression="Phone number" />
                    <asp:BoundField DataField="Disease" HeaderText="Disease" SortExpression="Disease" />
                    <asp:BoundField DataField="Advice" HeaderText="Advice" SortExpression="Advice" />
                    <asp:BoundField DataField="Open date" HeaderText="Open date" SortExpression="Open date" />
                    <asp:BoundField DataField="Close date" HeaderText="Close date" SortExpression="Close date" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="DiseasDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDataBaseConnectionString %>" SelectCommand="SELECT Pacient.FullName AS 'Patient', IIF(Gender = 1, 'Male', 'Female') AS 'Gender', PacientDetails.PhoneNumber AS 'Phone number', Disease.Name AS 'Disease', DiseaseBook.Advice, DiseaseBook.OpenDate AS 'Open date', DiseaseBook.CloseDate AS 'Close date' FROM DiseaseBook INNER JOIN Disease ON DiseaseBook.DiseaseId = Disease.Id INNER JOIN PacientDetails ON DiseaseBook.PacientDetailsId = PacientDetails.Id INNER JOIN Pacient ON PacientDetails.Id = Pacient.Id 
WHERE DiseaseBook.Id = @Id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="PatientsGV" Name="Id" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="PatientsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDataBaseConnectionString %>" SelectCommand="SELECT DiseaseBook.Id, Pacient.FullName AS 'Pacient', Disease.Name AS 'Disease', IIF(Gender = 1, 'Male', 'Female') AS 'Gender' FROM Doctor INNER JOIN DiseaseBook ON Doctor.Id = DiseaseBook.DoctorId INNER JOIN Disease ON DiseaseBook.DiseaseId = Disease.Id INNER JOIN PacientDetails ON DiseaseBook.PacientDetailsId = PacientDetails.Id INNER JOIN Pacient ON PacientDetails.Id = Pacient.Id WHERE Doctor.Id=@Id">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Id" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
      </div>
</asp:Content>
