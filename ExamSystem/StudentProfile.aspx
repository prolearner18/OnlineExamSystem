<%@ Page Title="" Language="C#" MasterPageFile="~/StudentHome.Master" AutoEventWireup="true" CodeBehind="StudentProfile.aspx.cs" Inherits="ExamSystem.StudentProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server" style="height: 688px">
        
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

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student Profile<br />
            <br />
        </div>
        <div>
        <table style="border: thin inset #000000; width: 854px; height: 368px">
            <tr>
                <td style="border: thin inset #000000; width: 468px;">
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                </td>
                <td style="border: thin inset #800000;">
                     <asp:Label ID="lblname" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin inset #000000; width: 468px;">
                    <asp:Label ID="Label2" runat="server" Text="Student ID:"></asp:Label>
                </td>
                <td style="border: thin inset #800000;">
                    <asp:Label ID="lblstuid" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td style="border: thin inset #000000; width: 468px;">
                <asp:Label ID="Label3" runat="server" Text="Department:"></asp:Label>
              </td>
                <td style="border: thin inset #800000;">
                     <asp:Label ID="lbldept" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin inset #000000; width: 468px;">
                    <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td style="border: thin inset #800000;">
                    <asp:Label ID="lblgender" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin inset #000000; width: 468px;">
                    <asp:Label ID="Label4" runat="server" Text="Completed Credit:"></asp:Label>
                </td>
                <td style="border: thin inset #800000;">
                    <asp:Label ID="lblcomcredit" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin inset #000000; width: 468px;">
                    <asp:Label ID="Label6" runat="server" Text="Semester:"></asp:Label>
                </td>
                <td style="border: thin inset #800000;">
                    <asp:Label ID="lblsemester" runat="server" Text=""></asp:Label>
                   
                </td>
            </tr>
            <tr>
                <td style="border: thin inset #000000; width: 468px;">
                    <asp:Label ID="Label7" runat="server" Text="CGPA:"></asp:Label>
                </td>
                <td style="border: thin inset #800000;">
                    <asp:Label ID="lblcgpa" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>

</asp:Content>
