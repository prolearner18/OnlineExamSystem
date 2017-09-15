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
    public partial class AddQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string stuid = (string)Session["Request_id"];
            lblid.Text = stuid;
            txtquestionnumber.Text = "1";
            
            //DataHandler hnd = new DataHandler();
            //List<QuestionSetObj> qset = hnd.GetQuestionSet(examtopic);

            //int res = (from x in qset
            //           select x).Distinct().Count();
            //txtquestionset.Text = res.ToString();

            //txtquestionnumber.Text = "1";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string examtopic = (string)Session["Examtopic"];
            DataHandler hnd = new DataHandler();
            //List<QuestionSetObj> qset = hnd.GetQuestionSet(examtopic);

            //int res = (from x in qset
            //           select x).Distinct().Count();
            //txtquestionset.Text = res.ToString();

            QuestionObj ques = new QuestionObj();
            ques.ExamTopic = examtopic;
            ques.ExamNumber =Convert.ToInt32(txtquestionset.Text);
            Session["examnumber"] = ques.ExamNumber;
            //ques.ExamNumber = res + 1;
            ques.QuestionNumber = 1;
            Session["questionnumber"] = 1;
            ques.QuestionText = TextBox1.Text;
            ques.Option1 = TextBox2.Text;
            ques.Option2 = TextBox3.Text;
            ques.Option3 = TextBox4.Text;
            ques.Option4 = TextBox5.Text;
            ques.CorrectAnswer =Convert.ToInt32(TextBox6.Text);

            hnd.InsertQuestion(ques);
            Response.Redirect("AddQuestion2.aspx");

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }
    }
}