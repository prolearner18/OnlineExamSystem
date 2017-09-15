<%@ Page Title="" Language="C#" MasterPageFile="~/StudentHome.Master" AutoEventWireup="true" CodeBehind="SelectTestNumber.aspx.cs" Inherits="ExamSystem.SelectTestNumber" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server" style="height: 745px">
        <p>
            <br />
        </p>
        <p>
            <div style="border: solid 1px white; text-align: right;">
        <asp:Label  ID="lblid" runat="server" Text="Label"></asp:Label>
        <asp:Button runat="server" Text="Logout" OnClick="Unnamed1_Click"></asp:Button>
    </div> 
       </p>
        <div style="font-size: xx-large; font-weight: bold; border: medium inset #000000">

            <br />

            Start quiz by selecting test.<br />
            <br />
        </div>
        <div>

            <br />

        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="False" BorderStyle="Inset" ShowFooter="True">

            <Columns>

              
                <asp:TemplateField HeaderText="Question Topic">
           
            <ItemTemplate>
               <asp:Label ID="lblquestiontopic" runat="server" Text='<%# Eval("ExamTopic").ToString() %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

                 <asp:TemplateField HeaderText="Question Set">
           
            <ItemTemplate>
               <asp:Label ID="lblexamset" runat="server" Text='<%# Eval("QuestionSet").ToString() %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

              
                <asp:TemplateField HeaderText="Start Quiz">
           
            <ItemTemplate>
                <asp:Button ID="AssignButton" runat="server" Text="Select" OnClick="AssignButton_Click" />
            </ItemTemplate>
        </asp:TemplateField>

            </Columns>

        </asp:GridView>
    </form>
</asp:Content>
