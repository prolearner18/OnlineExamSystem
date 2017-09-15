using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamSystem
{
    public partial class StudentHome1 : System.Web.UI.Page
    {
        public string a;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Request_Id = (string)Session["Request_id"];
            a = Request_Id;
            Session["Request_id"] = a;
            lblid.Text = a;
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("SelectTestNumber.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}