<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ExamSystem.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>UIU Online Exam System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/MarketPlace.css" type="text/css" />
</head>
<body>
<div id="wrap">
  <div id="header">
  </div>
  <div id="header-photo">
    <h1 id="logo-text"><a href="Index.aspx"><asp:Image ID="Image1" runat="server" Height="70px" ImageUrl="~/images/BannerLogo.gif" Width="356px" /></a></h1>
    <h2 id="slogan">Online Exam System for UIU Students.</h2>
  </div>
  <div  id="nav">
    <ul>
      <li id="current"><a href="Index.aspx">Home</a></li>
      <li><a href="StudentLogin.aspx">Student Login</a></li>
      <li><a href="StudentRegistration.aspx">Registration</a></li>
      <li><a href="rules*">Exam Rules</a></li>
      <li><a href="Suggesation.aspx">suggesation</a></li>
      <li><a href="About.aspx">About</a></li>
         <li><a href="AdminLogin.aspx">Admin Login</a></li>
    </ul>
  </div>
  <div id="content-wrap" class="three-col"  >
    <div id="sidebar">
      <h1>Menu</h1>
      <ul class="sidemenu">
      <li><a href="StudentRegistration.aspx">Registration</a></li>
        <li><a href="Index.aspx">Home</a></li>
      <li><a href="StudentLogin.aspx">Student Login</a></li>
      <li><a href="Suggesation.aspx">suggesation</a></li>
         <li><a href="AdminLogin.aspx">Admin Login</a></li>
      <li><a href="About.aspx">About</a></li>
      </ul>
    </div>
    <div id="rightcolumn">
      <h1>Support</h1>
        <p class="MsoNormal">
            <span>This is the first version for <b><i>On-Line Exam</i></b> system. <o:p></o:p></span>
        </p>
        <span>This document is the basic intended for any individual user, developer, tester, project manager or documentation writer that needs to understand the basic system architecture and its specifications</span><p>&nbsp;</p>
      <p>&nbsp;</p>
    </div>
    <div id="main"> <a name="TemplateInfo"></a>
      <h1>Online Exam System</h1>
      <p class="post-by">&nbsp;</p>
      <p><span>On-line Exam System is very useful for Educational Institute to prepare an exam, safe the time that will take to check the paper and prepare mark sheets. It will help the Institute to testing of students and develop their skills. But the disadvantages for this system, it takes a lot of times when you prepare the exam at the first time for usage. And we are needs number of computers with the same number of students</span></p>
      <a name="SampleTags"></a>
      <p>&nbsp;</p>
      
    </div>
  </div>
  <div id="footer-wrap">
    <div id="footer">
    </div>
  </div>
</div>
</body>
</html>
