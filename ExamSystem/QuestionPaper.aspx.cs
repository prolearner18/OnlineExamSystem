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
    public partial class QuestionPaper : System.Web.UI.Page
    {
        public string a;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Request_Id = (string)Session["Request_id"];
            a = Request_Id;
            lblid.Text = a;
            //Session["Request_id"] = a;
            string ExamTopic = (string)Session["questiontopic"];
            string examset = (string)Session["examset"];
            string Qnumber = (string)Session["Qnumber"];
            int i = (int)Session["i"];
            //int qn = Convert.ToInt32(Qnumber);
            int ems = Convert.ToInt32(examset);
            DataHandler dth = new DataHandler();
             List<QuestionObj> qlist = dth.GetQuestion(ExamTopic, ems);

            int res = (from x in qlist
                       select x).Distinct().Count();
            if (i<=1)
            {
                lblquestion.Text = qlist[i].QuestionText;
                CheckBox1.Text = qlist[i].Option1;
                CheckBox2.Text = qlist[i].Option2;
                CheckBox3.Text = qlist[i].Option3;
                CheckBox4.Text = qlist[i].Option4;

                // Qnumber = Convert.ToString(qn);
                //Session["Qnumber"] = Qnumber;

                Session["questiontopic"] = ExamTopic;
                Session["examset"] = examset;
            }
            else
                Response.Redirect("StudentResult.aspx");
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox1.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox2.Checked = false;
            CheckBox1.Checked = false;
            CheckBox4.Checked = false;
        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox1.Checked = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string Request_Id = (string)Session["Request_id"];
            string ExamTopic = (string)Session["questiontopic"];
            string examset = (string)Session["examset"];
            string Qnumber = (string)Session["Qnumber"];
            int i = (int)Session["i"];
            //int qn = Convert.ToInt32(Qnumber);
            int ems = Convert.ToInt32(examset);
            DataHandler dth = new DataHandler();
            ResultObj res = new ResultObj();

            List<QuestionObj> qlist = dth.GetQuestion(ExamTopic, ems);
            lblquestion.Text = qlist[i].QuestionText;
            CheckBox1.Text = qlist[i].Option1;
            CheckBox2.Text = qlist[i].Option2;
            CheckBox3.Text = qlist[i].Option3;
            CheckBox4.Text = qlist[i].Option4;

            res.StudentID = a;
            res.ExamTopic = ExamTopic;
            res.ExamNumber =Convert.ToInt32(examset);
            res.QuestionNumber = i;
            res.QuestionText= qlist[i].QuestionText;
            res.Option1= qlist[i].Option1; ;
            res.Option2= qlist[i].Option2;
            res.Option3= qlist[i].Option3;
            res.Option4= qlist[i].Option4;
            res.CorrectAnswer= qlist[i].CorrectAnswer;

            if (CheckBox1.Checked)
                res.YourAnswer = 1;
            else if (CheckBox2.Checked)
                res.YourAnswer = 2;
            else if (CheckBox3.Checked)
                res.YourAnswer = 3;
            else
                res.YourAnswer = 4;
            if (qlist[i].CorrectAnswer == res.YourAnswer)
                res.Result = true;
            else
                res.Result = false;

            i = i + 1;
            Session["i"] = i;

            dth.InsertResult(res);

            Response.Redirect("QuestionPaper.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }
    }
}