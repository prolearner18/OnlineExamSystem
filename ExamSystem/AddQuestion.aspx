<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddQuestion.aspx.cs" Inherits="ExamSystem.AddQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server" style="height: 515px">
         <p>
            <br />
        </p>
        <p>
            <div style="border: solid 1px white; text-align: right;">
        <asp:Label  ID="lblid" runat="server" Text="Label"></asp:Label>
        <asp:Button runat="server" Text="Logout" OnClick="Unnamed1_Click"></asp:Button>
    </div> 
              </p>
        <table style="height: 140px; width: 667px">
            <tr>
                <td style="width: 304px">
                    <asp:Label ID="Label1" runat="server" Text="Question Set:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtquestionset" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 304px">
                    <asp:Label ID="Label2" runat="server" Text="Question Number:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtquestionnumber" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Question:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Option1:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Option2:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Option3:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Option4:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Correct Answer:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </form>

</asp:Content>
