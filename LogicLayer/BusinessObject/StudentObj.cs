using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicLayer.BusinessObject
{
  public  class StudentObj
    {
        public string Name { set; get; }
        public string ID { set; get; }
        public string Dept { set; get; }
        public char Gender { set; get; }
        public int Completedcredit { set; get; }
        public int Semester { set; get; }
        public float Cgpa { set; get; }
        public string Password { set; get; }
    }
}
