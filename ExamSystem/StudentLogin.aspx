<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMaster.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="ExamSystem.StudentLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="height: 1217px">
     <br />
     <br />
    <br />
     <link rel="stylesheet" href="style/style3.css" />
    <form id="form" runat="server">
  <div class="login-page">
  <div class="form" style="font-size: x-large; border: thin outset #000000">
   
     
      Student Login<br />
      <br />
      <asp:TextBox ID="txtid" placeholder="ID"  runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="idvalidatorexp" runat="server" 
          ErrorMessage="Invalid ID format."
          controltovalidate="txtid"
          forecolor="Red" ValidationExpression="011[0-9]*"
           ></asp:RegularExpressionValidator>

       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ID is required." ForeColor="Red" ControlToValidate="txtid"></asp:RequiredFieldValidator>
      <br />
      <asp:TextBox ID="txtpassword"  placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
   
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required." ForeColor="Red" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
  
        
      <br />
      <br />
      <asp:Button ID="Button1" runat="server" Text="Sign In" BackColor="#FF9933" OnClick="Button1_Click1" />
      <br />
      <p class="message">
          Not registered? <a href="NoneUsers/StudentRegistration.aspx">Sign Up Here</a></p>
   
     
  
        
    </div>
</div>

    </form>

   </div>
</asp:Content>

