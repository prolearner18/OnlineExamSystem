<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAllStudent.aspx.cs" Inherits="ExamSystem.AdminAllStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        
         <p>
            <br />
        </p>
        <p>
            <div style="border: solid 1px white; text-align: right;">
        <asp:Label  ID="lblid" runat="server" Text="Label"></asp:Label>
        <asp:Button runat="server" Text="Logout" OnClick="Unnamed1_Click"></asp:Button>
    </div> 

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Dept" HeaderText="Dept" SortExpression="Dept" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="CompletedCredit" HeaderText="CompletedCredit" SortExpression="CompletedCredit" />
                    <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                    <asp:BoundField DataField="Cgpa" HeaderText="Cgpa" SortExpression="Cgpa" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>" DeleteCommand="DELETE FROM [StudentInformation] WHERE [ID] = @ID" InsertCommand="INSERT INTO [StudentInformation] ([Name], [ID], [Dept], [Gender], [CompletedCredit], [Semester], [Cgpa]) VALUES (@Name, @ID, @Dept, @Gender, @CompletedCredit, @Semester, @Cgpa)" SelectCommand="SELECT [Name], [ID], [Dept], [Gender], [CompletedCredit], [Semester], [Cgpa] FROM [StudentInformation]" UpdateCommand="UPDATE [StudentInformation] SET [Name] = @Name, [Dept] = @Dept, [Gender] = @Gender, [CompletedCredit] = @CompletedCredit, [Semester] = @Semester, [Cgpa] = @Cgpa WHERE [ID] = @ID">
             <DeleteParameters>
                 <asp:Parameter Name="ID" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="Name" Type="String" />
                 <asp:Parameter Name="ID" Type="String" />
                 <asp:Parameter Name="Dept" Type="String" />
                 <asp:Parameter Name="Gender" Type="String" />
                 <asp:Parameter Name="CompletedCredit" Type="Int32" />
                 <asp:Parameter Name="Semester" Type="Int32" />
                 <asp:Parameter Name="Cgpa" Type="Decimal" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="Name" Type="String" />
                 <asp:Parameter Name="Dept" Type="String" />
                 <asp:Parameter Name="Gender" Type="String" />
                 <asp:Parameter Name="CompletedCredit" Type="Int32" />
                 <asp:Parameter Name="Semester" Type="Int32" />
                 <asp:Parameter Name="Cgpa" Type="Decimal" />
                 <asp:Parameter Name="ID" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
    </form>

</asp:Content>
