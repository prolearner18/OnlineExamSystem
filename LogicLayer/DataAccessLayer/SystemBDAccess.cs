using LogicLayer.BusinessLogic;
using LogicLayer.BusinessObject;
using LogicLayer.DataLogic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicLayer.DataAccessLayer
{
  public  class SystemBDAccess
    {
        public bool StudentInfoInsert(StudentInfoObj StudentInformation)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@Name", StudentInformation.Name),
                new SqlParameter("@ID", StudentInformation.ID),
                new SqlParameter("@Dept", StudentInformation.Dept),
                new SqlParameter("@Gender", StudentInformation.Gender),
                new SqlParameter("@CompletedCredit", StudentInformation.Completedcredit),
                new SqlParameter("@Semester", StudentInformation.Semester),
                new SqlParameter("@Cgpa", StudentInformation.Cgpa),
                new SqlParameter("@Password", StudentInformation.Password),
            };

            return SqlDBHelper.ExecuteNonQuery("StudentInfoInsert", CommandType.StoredProcedure, parameters);
        }

        public List<StudentInfoObj> GetById(string ID)
        {
            List<StudentInfoObj> studentinfolist = null;

            SqlParameter[] parameter = new SqlParameter[] {
                new SqlParameter("@ID", ID)
            };
            //Lets get the list of all employees in a datataable
            using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("StudentInfoGetById", CommandType.StoredProcedure, parameter))
            {
                //check if any record exist or not
                if (table.Rows.Count > 0)
                {
                    //Lets go ahead and create the list of employees
                    studentinfolist = new List<StudentInfoObj>();

                    //Now lets populate the employee details into the list of employees
                    foreach (DataRow row in table.Rows)
                    {
                        StudentInfoObj stuinfo = new StudentInfoObj();

                        stuinfo.Name = row["Name"].ToString();
                        stuinfo.ID = (row["ID"]).ToString();
                        stuinfo.Dept = row["Dept"].ToString();
                        stuinfo.Gender = Convert.ToChar(row["Gender"]);
                        stuinfo.Completedcredit = Convert.ToInt32(row["CompletedCredit"]);
                        stuinfo.Semester = Convert.ToInt32(row["Semester"]);
                        stuinfo.Cgpa = float.Parse(row["Cgpa"].ToString());
                        stuinfo.Password = Convert.ToString(row["Password"]);

                        studentinfolist.Add(stuinfo);
                    }
                }
            }

            return studentinfolist;
        }

        public List<QuestionSetObj> GetQuestionSet(string ExamTopic)
        {
            List<QuestionSetObj> Questionset = null;

            SqlParameter[] parameter = new SqlParameter[] {
                new SqlParameter("@ExamTopic", ExamTopic)
            };
            //Lets get the list of all employees in a datataable
            using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("GetQuestionSet", CommandType.StoredProcedure, parameter))

   
            {
                //check if any record exist or not
                if (table.Rows.Count > 0)
                {
                    //Lets go ahead and create the list of employees
                    Questionset = new List<QuestionSetObj>();

                    //Now lets populate the employee details into the list of employees
                    foreach (DataRow row in table.Rows)
                    {
                        QuestionSetObj qs = new QuestionSetObj();

                        qs.ExamTopic = row["ExamTopic"].ToString();
                      
                        qs.QuestionSet = Convert.ToInt32(row["QuestionSet"]);
                        

                        Questionset.Add(qs);
                    }
                }
            }

            return Questionset;
        }

        public List<QuestionObj> GetQuestion(string ExamTopic, int ExamNumber)
        {
            List<QuestionObj> Questionset = null;

            SqlParameter[] parameter = new SqlParameter[] {
                new SqlParameter("@ExamTopic", ExamTopic),
                new SqlParameter("@ExamNumber", ExamNumber)
            };
            //Lets get the list of all employees in a datataable
            using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("QuestionGetByTopicAndNumber", CommandType.StoredProcedure, parameter))


            {
                //check if any record exist or not
                if (table.Rows.Count > 0)
                {
                    //Lets go ahead and create the list of employees
                    Questionset = new List<QuestionObj>();

                    //Now lets populate the employee details into the list of employees
                    foreach (DataRow row in table.Rows)
                    {
                        QuestionObj qs = new QuestionObj();

                        qs.ExamTopic = row["ExamTopic"].ToString();
                        qs.ExamNumber = Convert.ToInt32(row["ExamNumber"]);
                        qs.QuestionNumber= Convert.ToInt32(row["QuestionNumber"]);
                        qs.QuestionText = row["QuestionText"].ToString();
                        qs.Option1 = row["Option1"].ToString();
                        qs.Option2 = row["Option2"].ToString();
                        qs.Option3 = row["Option3"].ToString();
                        qs.Option4 = row["Option4"].ToString();
                        qs.CorrectAnswer =Convert.ToInt32(row["CorrectAnswer"]);

                        Questionset.Add(qs);
                    }
                }
            }

            return Questionset;
        }

        public bool InsertQuestion(QuestionObj question)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@ExamTopic", question.ExamTopic),
                new SqlParameter("@ExamNumber", question.ExamNumber),
                new SqlParameter("@QuestionNumber", question.QuestionNumber),
                new SqlParameter("@QuestionText", question.QuestionText),
                new SqlParameter("@Option1", question.Option1),
                new SqlParameter("@Option2", question.Option2),
                new SqlParameter("@Option3", question.Option3),
                new SqlParameter("@Option4", question.Option4),
                new SqlParameter("@CorrectAnswer", question.CorrectAnswer)
            };

            return SqlDBHelper.ExecuteNonQuery("QuestionInsert", CommandType.StoredProcedure, parameters);
        }

        public bool InsertResult(ResultObj res)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@StudentID", res.StudentID),
                new SqlParameter("@ExamTopic", res.ExamTopic),
                new SqlParameter("@ExamNumber", res.ExamNumber),
                new SqlParameter("@QuestionNumber", res.QuestionNumber),
                new SqlParameter("@QuestionText", res.QuestionText),
                new SqlParameter("@Option1", res.Option1),
                new SqlParameter("@Option2", res.Option2),
                new SqlParameter("@Option3", res.Option3),
                new SqlParameter("@Option4", res.Option4),
                new SqlParameter("@CorrectAnswer", res.CorrectAnswer),
                new SqlParameter("@YourAnswer", res.YourAnswer),
                new SqlParameter("@Result", res.Result)
            };

            return SqlDBHelper.ExecuteNonQuery("ResultInsert", CommandType.StoredProcedure, parameters);
        }

        public List<ResultObj> GetResult(string StudentID)
        {
            List<ResultObj> stures = null;

            SqlParameter[] parameter = new SqlParameter[] { 
                new SqlParameter("@StudentID",StudentID)
            };
            //Lets get the list of all employees in a datataable
            using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("GetResult", CommandType.StoredProcedure, parameter))


            {
                //check if any record exist or not
                if (table.Rows.Count > 0)
                {
                    //Lets go ahead and create the list of employees
                    stures = new List<ResultObj>();

                    //Now lets populate the employee details into the list of employees
                    foreach (DataRow row in table.Rows)
                    {
                        ResultObj qs = new ResultObj();

                        qs.StudentID = row["StudentID"].ToString();
                        qs.ExamTopic = row["ExamTopic"].ToString();
                        qs.ExamNumber = Convert.ToInt32(row["ExamNumber"]);
                        qs.QuestionNumber = Convert.ToInt32(row["QuestionNumber"]);
                        qs.QuestionText = row["QuestionText"].ToString();
                        qs.Option1 = row["Option1"].ToString();
                        qs.Option2 = row["Option2"].ToString();
                        qs.Option3 = row["Option3"].ToString();
                        qs.Option4 = row["Option4"].ToString();
                        qs.CorrectAnswer = Convert.ToInt32(row["CorrectAnswer"]);
                        qs.YourAnswer = Convert.ToInt32(row["YourAnswer"]);
                        qs.Result = Convert.ToBoolean(row["Result"]);

                        stures.Add(qs);
                    }
                }
            }

            return stures;
        }

        public List<StudentInfoObj> GetAllStudentInfo()
        {
            List<StudentInfoObj> studentinfolist = null;

           
            //Lets get the list of all employees in a datataable
            using (DataTable table = SqlDBHelper.ExecuteSelectCommand("GetStudentAll", CommandType.StoredProcedure))
            {
                //check if any record exist or not
                if (table.Rows.Count > 0)
                {
                    //Lets go ahead and create the list of employees
                    studentinfolist = new List<StudentInfoObj>();

                    //Now lets populate the employee details into the list of employees
                    foreach (DataRow row in table.Rows)
                    {
                        StudentInfoObj stuinfo = new StudentInfoObj();

                        stuinfo.Name = row["Name"].ToString();
                        stuinfo.ID = (row["ID"]).ToString();
                        stuinfo.Dept = row["Dept"].ToString();
                        stuinfo.Gender = Convert.ToChar(row["Gender"]);
                        stuinfo.Completedcredit = Convert.ToInt32(row["CompletedCredit"]);
                        stuinfo.Semester = Convert.ToInt32(row["Semester"]);
                        stuinfo.Cgpa = float.Parse(row["Cgpa"].ToString());
                        stuinfo.Password = Convert.ToString(row["Password"]);

                        studentinfolist.Add(stuinfo);
                    }
                }
            }

            return studentinfolist;
        }
    }
}
