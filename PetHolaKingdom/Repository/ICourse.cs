using PetHolaKingdom.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PetHolaKingdom.Repository
{
    internal interface ICourse
    {
        IEnumerable<CourseViewHome> GetListCourseHome();
    }
}