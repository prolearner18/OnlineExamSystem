using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamSystem
{
    public partial class AddQuestion2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string exmtopic = (string)Session["Examtopic"];
            int examset = (int)Session["examnumber"];
            int questionnumber = (int)Session["questionnumber"];
            questionnumber = questionnumber + 1;
            string stuid = (string)Session["Request_id"];
            lblid.Text = stuid;
            Label9.Text = exmtopic;
            txtquestionset.Text = examset.ToString();
            txtquestionnumber.Text =Convert.ToString(questionnumber);

            Session["questionnumber"] = questionnumber;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddQuestion2.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("AdminHome.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }
    }
}