using PetHolaKingdom.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetHolaKingdom.Repository
{
    internal interface ILesson
    {
        List<Models.Lesson> GetLessonPageList(int courseId, string keysearch);
    }
}
