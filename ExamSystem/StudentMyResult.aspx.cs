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
    public partial class StudentMyResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Request_id = (string)Session["Request_id"];
            lblid.Text = Request_id;
            DataHandler dhn = new DataHandler();
            List<ResultObj> res = dhn.GetResult(Request_id);
            int rescount = 0;
            rescount = res.Where(a => a.Result = true).ToList().Count;


        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }
    }
}