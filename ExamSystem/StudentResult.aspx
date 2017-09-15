<%@ Page Title="" Language="C#" MasterPageFile="~/StudentHome.Master" AutoEventWireup="true" CodeBehind="StudentResult.aspx.cs" Inherits="ExamSystem.StudentResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <p>
            <br />
        </p>
        <p>
            <div style="border: solid 1px white; text-align: right;">
                <asp:Label ID="lblid" runat="server" Text="Label"></asp:Label>
                <asp:Button runat="server" Text="Logout" OnClick="Unnamed1_Click"></asp:Button>
            </div>
            <div style="max-height: 600px; overflow-x: scroll;">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"  AutoGenerateColumns="False" EmptyDataText="Data set is empty" Width="60%">
                    <Columns>
                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                        <asp:BoundField DataField="ExamTopic" HeaderText="ExamTopic" SortExpression="ExamTopic" />
                        <asp:BoundField DataField="ExamNumber" HeaderText="ExamNumber" SortExpression="ExamNumber" />
                        <asp:BoundField DataField="QuestionNumber" HeaderText="QuestionNumber" SortExpression="QuestionNumber" />
                        <asp:BoundField DataField="QuestionText" HeaderText="QuestionText" SortExpression="QuestionText" />
                        <asp:BoundField DataField="Option1" HeaderText="Option1" SortExpression="Option1" />
                        <asp:BoundField DataField="Option2" HeaderText="Option2" SortExpression="Option2" />
                        <asp:BoundField DataField="Option3" HeaderText="Option3" SortExpression="Option3" />
                        <asp:BoundField DataField="Option4" HeaderText="Option4" SortExpression="Option4" />
                        <asp:BoundField DataField="CorrectAnswer" HeaderText="CorrectAnswer" SortExpression="CorrectAnswer" />
                        <asp:BoundField DataField="YourAnswer" HeaderText="YourAnswer" SortExpression="YourAnswer" />
                        <asp:CheckBoxField DataField="Result" HeaderText="Result" SortExpression="Result" />
                    </Columns>
                </asp:GridView>
            </div>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineExamConnectionString %>" SelectCommand="SELECT * FROM [Result] WHERE ([StudentID] = @StudentID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblid" Name="StudentID" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

    </form>

</asp:Content>
