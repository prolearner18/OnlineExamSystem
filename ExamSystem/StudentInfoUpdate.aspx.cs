using LogicLayer.BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamSystem
{
    public partial class StudentInfoUpdate : System.Web.UI.Page
    {
        public string a;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Request_Id = (string)Session["Request_id"];
            a = Request_Id;
            Session["Request_id"] = a;
            lblid.Text = a;

            lblstuid.Text = a;
            DataHandler user = new DataHandler();
            List<StudentInfoObj> userdata = user.GetById(a);
            lblname.Text = userdata[0].Name;
            lblstuid.Text = userdata[0].ID;
            txtcredit.Text = Convert.ToString(userdata[0].Completedcredit);
            txtcgpa.Text = Convert.ToString(userdata[0].Cgpa);
            DropDownList3.SelectedValue = Convert.ToString(userdata[0].Semester);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}