using LogicLayer.BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamSystem
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            StudentInfoObj stuinfo = new StudentInfoObj();

            stuinfo.Name = txtname.Text;
            stuinfo.ID = txtid.Text;
            stuinfo.Dept = Convert.ToString(DropDownList1.SelectedValue);
            stuinfo.Gender = Convert.ToChar(DropDownList2.SelectedValue);
            stuinfo.Completedcredit = Convert.ToInt32(txtcredit.Text);
            stuinfo.Semester = Convert.ToInt32(DropDownList3.SelectedValue);
            stuinfo.Cgpa = float.Parse(txtcgpa.Text);


            stuinfo.Password = txtpassword.Text;

            DataHandler stuhandler = new DataHandler();

            stuhandler.Insert(stuinfo);

            txtname.Text = null;
            txtid.Text = null;
            DropDownList1.SelectedValue = null;
            DropDownList2.SelectedValue = null;
            DropDownList3.SelectedValue = null;
            txtcredit.Text = null;
            txtcgpa.Text = null;
            txtpassword.Text = null;
            string val = "Account Created Successfully...";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + val + "');", true);
            Response.Redirect("StudentLogin.aspx");
        }
    }
}