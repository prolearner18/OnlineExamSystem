<%@ Page Title="" Language="C#" MasterPageFile="~/StudentHome.Master" AutoEventWireup="true" CodeBehind="QuestionPaper.aspx.cs" Inherits="ExamSystem.QuestionPaper" %>
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
        
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblquestion" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true" />
                       
                        <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" AutoPostBack="true" />
                        
                        <asp:CheckBox ID="CheckBox3" runat="server" OnCheckedChanged="CheckBox3_CheckedChanged" AutoPostBack="true" />
                       
                        <asp:CheckBox ID="CheckBox4" runat="server" OnCheckedChanged="CheckBox4_CheckedChanged" AutoPostBack="true" />
                       
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Next" Height="39px" Width="126px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>


</asp:Content>
