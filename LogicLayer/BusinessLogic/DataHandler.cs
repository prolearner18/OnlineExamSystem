using LogicLayer.BusinessObject;
using LogicLayer.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicLayer.BusinessLogic
{
   public class DataHandler
    {
       public SystemBDAccess DBAccess = null;
        public DataHandler() {
            DBAccess = new SystemBDAccess();
        }
       
        public bool Insert(StudentInfoObj stuinfo)
        {
            return DBAccess.StudentInfoInsert(stuinfo);
        }

        public List<StudentInfoObj> GetById(string id)
        {
            return DBAccess.GetById(id);
        }

        public List<StudentInfoObj> GetAllStudentInfo()
        {
            return DBAccess.GetAllStudentInfo();
        }

        public List<QuestionSetObj> GetQuestionSet(string ExamTopic)
        {
            return DBAccess.GetQuestionSet(ExamTopic);
        }

        public List<QuestionObj> GetQuestion(string ExamTopic, int ExamNumber)
        {
           return DBAccess.GetQuestion(ExamTopic, ExamNumber);
        }

        public List<ResultObj> GetResult(string StudentID)
        {
           return DBAccess.GetResult(StudentID);
        }
        public bool InsertQuestion(QuestionObj question)
        {
            return DBAccess.InsertQuestion(question);
        }

        public bool InsertResult(ResultObj res)
        {
            return DBAccess.InsertResult(res);
        }

    }
}
