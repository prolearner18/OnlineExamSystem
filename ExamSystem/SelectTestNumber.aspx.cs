using LogicLayer.BusinessLogic;
using LogicLayer.BusinessObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamSystem
{
    public partial class SelectTestNumber : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Request_Id = (string)Session["Request_id"];
            string a = Request_Id;
            lblid.Text = a;
            Session["Request_id"] = a;
            Session["ExamTopic"] = "C Language";

            if (!Page.IsPostBack)
            {
                DataHandler stuhand = new DataHandler();
                List<QuestionSetObj> talist = stuhand.GetQuestionSet("C Language");
                GridView1.DataSource = talist;
                GridView1.DataBind();
            }

        }

        protected void AssignButton_Click(object sender, EventArgs e)
        {
            DataHandler stuhand = new DataHandler();
            //Get the button that raised the event
            Button btn = (Button)sender;

            //Get the row that contains this button
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;

            Label questiontopic = (Label)gvr.FindControl("lblquestiontopic");
            Label examset = (Label)gvr.FindControl("lblexamset");
            Session["questiontopic"] = questiontopic.Text;
            Session["examset"] = examset.Text;
            int i = 0;
            Session["i"] = i;
            Response.Redirect("QuestionPaper.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }
    }
}