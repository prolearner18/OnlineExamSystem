using LogicLayer.BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamSystem
{
    public partial class StudentResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Request_id = (string)Session["Request_id"];
            lblid.Text = Request_id;
           // DataHandler dth = new DataHandler();
            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}