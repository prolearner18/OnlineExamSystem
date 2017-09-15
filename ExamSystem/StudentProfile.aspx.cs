using LogicLayer.BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamSystem
{
    public partial class StudentProfile : System.Web.UI.Page
    {
        public string a = "9090";
        public void Page_Load(object sender, EventArgs e)
        {
            {
                string Request_Id = (string)Session["Request_id"];
                a = Request_Id;
                Session["Request_id"] = a;
            }
            if (!IsPostBack)
            {
                lblid.Text = a;

                DataHandler user = new DataHandler();
                List<StudentInfoObj> userdata = user.GetById(a);
                if (userdata != null)
                {
                    lblname.Text = userdata[0].Name;
                    lblcgpa.Text = Convert.ToString(userdata[0].Cgpa);
                    lbldept.Text = userdata[0].Dept;
                    lblcomcredit.Text = Convert.ToString(userdata[0].Completedcredit);
                    lblgender.Text = Convert.ToString(userdata[0].Gender);
                    lblsemester.Text = Convert.ToString(userdata[0].Semester);
                    lblstuid.Text = a;
                }
            }


        }


        protected void Requestbtn_Click(object sender, EventArgs e)
        {
            Session["Request_id"] = a;


        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
           // Response.Redirect("Index.aspx");
        }
    }
}