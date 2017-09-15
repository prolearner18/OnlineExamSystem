using LogicLayer.BusinessLogic;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamSystem
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Report1.rdlc");
                DataHandler hnd = new DataHandler();
                List<StudentInfoObj> stulist = hnd.GetAllStudentInfo();

                ReportDataSource datasource = new ReportDataSource("DataSet1",stulist);
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.DataSources.Add(datasource);
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}