<%@ Page Title="" Language="C#" MasterPageFile="~/StudentHome.Master" AutoEventWireup="true" CodeBehind="StudentInfoUpdate.aspx.cs" Inherits="ExamSystem.StudentInfoUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server" style="height: 745px">
        <p>
            <br />
        </p>
        <p>
            <div style="border: solid 1px white; text-align: right;">
        <asp:Label  ID="lblid" runat="server" Text="Label"></asp:Label>
        <asp:Button runat="server" Text="Logout" OnClick="Unnamed1_Click" style="height: 23px"></asp:Button>
    </div> 
       </p>
        <div style="font-size: xx-large; font-weight: bold; border: medium inset #000000">

            &nbsp;<br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            Update Student Profile.<br />
            <br />
        </div>
        <div>

            <br />

        </div>

         <table style="border: medium inset #000000; width: 832px; height: 317px">
            <tr>
                <td style="border: thin inset #000000; width: 450px;">
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                </td>
                <td style="border: thin inset #800000;">
                     <asp:Label ID="lblname" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin inset #000000; width: 450px;">
                    <asp:Label ID="Label2" runat="server" Text="Student ID:"></asp:Label>
                </td>
                <td style="border: thin inset #800000;">
                    <asp:Label ID="lblstuid" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            
           
            
            <tr>
                <td style="border: thin inset #000000; width: 450px;">
                    <asp:Label ID="Label4" runat="server" Text="Completed Credit:"></asp:Label>
                </td>
                <td style="border: thin inset #800000" >
                    <asp:TextBox ID="txtcredit" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: thin inset #000000; width: 450px;">
                    <asp:Label ID="Label6" runat="server" Text="Semester:"></asp:Label>
                </td>
                <td style="border: thin inset #800000">
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="46px" Width="100%">
          <asp:ListItem Value="-1">Update Semester</asp:ListItem>
          <asp:ListItem Value="1">1st</asp:ListItem>
          <asp:ListItem Value="2">2nd</asp:ListItem>
          <asp:ListItem Value="3">3rd</asp:ListItem>
          <asp:ListItem Value="4">4th</asp:ListItem>
          <asp:ListItem Value="5">5th</asp:ListItem>
          <asp:ListItem Value="6">6th</asp:ListItem>
          <asp:ListItem Value="7">7th</asp:ListItem>
          <asp:ListItem Value="8">8th</asp:ListItem>
          <asp:ListItem Value="9">9th</asp:ListItem>
          <asp:ListItem Value="10">10th</asp:ListItem>
          <asp:ListItem Value="11">11th</asp:ListItem>
          <asp:ListItem Value="12">12th</asp:ListItem>
      </asp:DropDownList>
                   
                </td>
            </tr>
            <tr>
                <td style="border: thin inset #000000; width: 450px;">
                    <asp:Label ID="Label7" runat="server" Text="CGPA:"></asp:Label>
                </td>
                <td style="border: thin inset #800000;">
                     <asp:TextBox ID="txtcgpa" runat="server"></asp:TextBox>
                </td>
            </tr>

            </table>
        <div>
             <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" Height="43px" Width="201px" />
        </div>

    </form>
 
</asp:Content>
