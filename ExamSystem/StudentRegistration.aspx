<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMaster.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="ExamSystem.StudentRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <br />
    <br />

<html xmlns="http://www.w3.org/1999/xhtml">
  
  <link rel="stylesheet" href="style/style.css" />


    <form id="form1" runat="server" style="height: 1077px">
  <div class="login-page">
  <div class="form">
      Registration Form<br />
      <asp:Image ID="Image1" runat="server" Height="113px" ImageUrl="~/Images/Untitled.png" Width="130px"></asp:Image>
    
      <br />
      <br />
      <asp:TextBox ID="txtname" placeholder="Name" runat="server"></asp:TextBox>
      
      <asp:RequiredFieldValidator runat="server" ErrorMessage="Name is required." ForeColor="Red" ControlToValidate="txtname"></asp:RequiredFieldValidator>
    
      <br />
      <asp:TextBox ID="txtid" placeholder="ID" runat="server"></asp:TextBox>

      <asp:RegularExpressionValidator ID="idvalidatorexp" runat="server" 
          ErrorMessage="Invalid ID format."
          controltovalidate="txtid"
          forecolor="Red" ValidationExpression="011[0-9]*"
           ></asp:RegularExpressionValidator>

       <asp:RequiredFieldValidator runat="server" ErrorMessage="ID is required." ForeColor="Red" ControlToValidate="txtid"></asp:RequiredFieldValidator>
    
      <br />
      <asp:DropDownList ID="DropDownList1" runat="server" Height="46px" Width="100%">
          <asp:ListItem Value="-1">Slect Deprtment</asp:ListItem>
          <asp:ListItem Value="CSE">CSE</asp:ListItem>
          <asp:ListItem Value="EEE">EEE</asp:ListItem>
          <asp:ListItem Value="BBA">BBA</asp:ListItem>
      </asp:DropDownList>
       <asp:RequiredFieldValidator runat="server" ErrorMessage="Department selection is required." InitialValue="-1" ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
      <br />
      <br />
      <asp:DropDownList ID="DropDownList2" runat="server" Height="46px" Width="100%">
          <asp:ListItem Value="G">Gender</asp:ListItem>
          <asp:ListItem Value="M">Male</asp:ListItem>
          <asp:ListItem Value="F">Female</asp:ListItem>
      </asp:DropDownList>
      <asp:RequiredFieldValidator runat="server" ErrorMessage="Gender selection is required." InitialValue="G" ForeColor="Red" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
      
     
    
      <br />
      <br />
      <asp:TextBox ID="txtcredit" placeholder="Completed Credit" runat="server"></asp:TextBox>
      <asp:RegularExpressionValidator ID="RegularExpressionValidatorcredit" runat="server" ErrorMessage="Invalid credit number."
         controltovalidate="txtcredit"
          forecolor="Red" ValidationExpression="[0-9][0-9][0-5]"
           ></asp:RegularExpressionValidator>
      <asp:RequiredFieldValidator runat="server" ErrorMessage="Completed credit is required." ForeColor="Red" ControlToValidate="txtcredit"></asp:RequiredFieldValidator>
      
    
      <br />
      <asp:DropDownList ID="DropDownList3" runat="server" Height="46px" Width="100%">
          <asp:ListItem Value="-1">Select Semester</asp:ListItem>
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
      <asp:RequiredFieldValidator runat="server" ErrorMessage="Semester selection is required." InitialValue="-1" ForeColor="Red" ControlToValidate="DropDownList3"></asp:RequiredFieldValidator>
      
      <br />
      <br />
      <asp:TextBox ID="txtcgpa" placeholder="CGPA" runat="server"></asp:TextBox>
      <asp:RegularExpressionValidator ID="RegularExpressionValidatorcgpa" runat="server" ErrorMessage="Invalid CGPA format."
          controltovalidate="txtcgpa"
          forecolor="Red" ValidationExpression="[0-3].[0-9][0-9]"
           ></asp:RegularExpressionValidator>
      <asp:RequiredFieldValidator runat="server" ErrorMessage="CGPA is required." ForeColor="Red" ControlToValidate="txtcgpa"></asp:RequiredFieldValidator>
      
      
    
      <br />
      <asp:TextBox ID="txtpassword" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator runat="server" ErrorMessage="Password is required." ForeColor="Red" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
      
    
      <br />
      <br />
      <asp:Button ID="Button1" runat="server" BackColor="#FF6600" OnClick="Button1_Click1" Text="Create Account" />
    
 
      <p class="message">registered? <a href="StudentLogin.aspx">Login</a></p>

       </div>
</div>

    </form>

</html>

</asp:Content>
