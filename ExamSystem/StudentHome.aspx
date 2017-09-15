<%@ Page Title="" Language="C#" MasterPageFile="~/StudentHome.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="ExamSystem.StudentHome1" %>
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

            Select test topic and go ahead.<br />
            <br />
        </div>
        <div>

            <br />

        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table border="1">
            <tr>
                 <td style="border: thin inset #000000; width: 533px;">
                    <asp:Label ID="Label1" runat="server" Text="C Language"></asp:Label>
                </td>
                <td style="font-size: x-large; border: thin inset #000080">
                    <asp:Button ID="Button1" runat="server" Text="Select" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                 <td style="border: thin inset #000000; width: 533px;">
                    <asp:Label ID="Label2" runat="server" Text="C++ Language"></asp:Label>
                </td>
                <td style="font-size: x-large; border: thin inset #000080">
                    <asp:Button ID="Button2" runat="server" Text="Select" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                 <td style="border: thin inset #000000; width: 533px;">
                    <asp:Label ID="Label3" runat="server" Text="Java Language"></asp:Label>
                </td>
                <td style="font-size: x-large; border: thin inset #000080">
                    <asp:Button ID="Button3" runat="server" Text="Select" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                 <td style="border: thin inset #000000; width: 533px;">
                    <asp:Label ID="Label4" runat="server" Text="C# Language"></asp:Label>
                </td>
                <td style="font-size: x-large; border: thin inset #000080">
                    <asp:Button ID="Button4" runat="server" Text="Select" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
    </form>
 
</asp:Content>
