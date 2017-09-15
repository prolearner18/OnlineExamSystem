using LogicLayer.BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamSystem
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
            string StudentId = txtid.Text;
            string StudentPwd = txtpassword.Text;

            DataHandler stuhandler = new DataHandler();

            List<StudentInfoObj> studentInfoList = stuhandler.GetById(StudentId);

            if (studentInfoList != null)
            {
                foreach (StudentInfoObj std in studentInfoList)
                {

                    if (StudentPwd == std.Password)
                    {
                        Session["Request_id"] = StudentId;
                        Response.Redirect("StudentHome.aspx");
                        break;
                    }
                    else
                    {
                        string val = "Incorrect ID/Password.";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + val + "');", true);
                        //Response.Redirect("StudentLogin.aspx");
                        break;
                    }
                }
            }
        }
    }
}
