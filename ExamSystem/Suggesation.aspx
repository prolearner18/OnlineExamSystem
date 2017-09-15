<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMaster.Master" AutoEventWireup="true" CodeBehind="Suggesation.aspx.cs" Inherits="ExamSystem.Suggesation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <div>
            <form action="Index.aspx">
        <p>
          <label>Name</label>
          <input name="dname" value="Your Name" type="text" size="30" />
          <label>Email</label>
          <input name="demail" value="Your Email" type="text" size="30" />
          <label>Your Comments</label>
          <textarea rows="5" cols="5"></textarea>
          <br />
          <input class="button" type="submit" />
        </p>
      </form>
        </div>
    </form>

</asp:Content>
