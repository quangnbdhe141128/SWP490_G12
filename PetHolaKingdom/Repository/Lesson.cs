using PetHolaKingdom.Helpers;
using PetHolaKingdom.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PetHolaKingdom.Repository
{
    public class Lesson:ILesson
    {
        private PetHolaKingdomEntities entity;

        public Lesson()
        {
            entity = new PetHolaKingdomEntities();
        }
        public IEnumerable<LessonViewPage> GetListLessonPage()
        {
            /*var text = from lesson in entity.Lessons
                       join cat in entity.Levels on lesson.LessonLevel equals cat.id
                       select lesson;*/
            var query = from lesson in entity.Lessons
                        join cat in entity.Levels on lesson.LessonLevel equals cat.id
                        select new LessonViewPage
                        {
                            Id = lesson.id,
                            Name=lesson.Name,
                            CreatedDate=lesson.CreatedDate,
                            Description=lesson.Description,
                            ThumbNail=lesson.thumbnail,
                            LevelCourse=cat.Name

                        };
            return query;
        }
    }
}