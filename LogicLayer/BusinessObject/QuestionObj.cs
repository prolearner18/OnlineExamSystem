using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicLayer.BusinessObject
{
   public class QuestionObj
    {
        public string ExamTopic { set; get; }
       public int ExamNumber { set; get; }
      public int QuestionNumber { set; get; }
      public string QuestionText { set; get; }
      public string Option1 { set; get; }
      public string Option2 { set; get; }
      public string Option3 { set; get; }
      public string Option4 { set; get; }
      public int CorrectAnswer { set; get; }
    }
}
