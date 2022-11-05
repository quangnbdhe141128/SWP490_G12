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
        public List<LessonViewPage> GetLessonPageList(int courseId, string keysearch)
        {
            PetHolaKingdomEntities entity = new PetHolaKingdomEntities();
            var list = (from lesson in entity.Lessons
                        join level in entity.Levels on lesson.LevelId equals level.id
                        
                        select new LessonViewPage
                        {
                            Id = lesson.id,
                            Name = lesson.Name,
                            CreatedDate = lesson.CreatedDate,
                            Description = lesson.Description,
                            Image = lesson.Image,
                            CourseCategoryId=lesson.CourseCategoryId,
                            LevelInfo =level.Name,
                            LevelId =lesson.LevelId
                        }).Where(o => o.CourseCategoryId == courseId && (o.Name.StartsWith(keysearch) || keysearch == "")).ToList();
            return list;
        }
    }
}