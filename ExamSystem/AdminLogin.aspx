<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMaster.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="ExamSystem.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <br />
        <br />
        <link rel="stylesheet" href="style/style3.css" />
        <form id="form" runat="server" style="height: 444px">
            <div class="login-page">
                <div class="form" style="border: thin outset #000000; font-size: x-large">
                    Admin Login<br />
                    <br />
                    <asp:TextBox ID="txtid" placeholder="ID" runat="server"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="txtpassword" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>


                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Sign In" BackColor="#FF9933" OnClick="Button1_Click1" />
                    <br />

                </div>
            </div>
        </form>
    </div>
</asp:Content>
