using PetHolaKingdom.Helpers;
using PetHolaKingdom.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetHolaKingdom.Repository
{
    internal interface ICourse
    {
        IEnumerable<Cours> GetCourse();
        List<Cours> GetCoursePageList(int catId, string keysearch);
        Cours GetCourseDetail(int Id);
        List<Cours> GetCourseList(string keysearch);
        CourseList GetEditCourseById(int id);
        bool EditCourse(CourseList list);
        bool AddCourse(CourseList list);
        bool DeleteCourse(int id);
    }
}
