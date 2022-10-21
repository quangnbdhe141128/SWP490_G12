using PetHolaKingdom.Helpers;
using PetHolaKingdom.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PetHolaKingdom.Repository
{
    public class Course : ICourse
    {
        private PetHolaKingdomEntities entity;

        public Course()
        {
            entity = new PetHolaKingdomEntities();
        }
        public IEnumerable<CourseViewHome> GetListCourseHome()
        {
            var query = from course in entity.Courses
                       
                        select new CourseViewHome
                        {
                            Id = course.id,
                            Name = course.Name,
                            ThumbNail = course.thumbnail,
                            CreatedDate= course.CreatedDate

                        };
            return query;
        }
    }
}