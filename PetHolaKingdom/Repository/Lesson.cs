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
        public List<Models.Lesson> GetLessonPageList(int courseId, string keysearch)
        {
            PetHolaKingdomEntities entities = new PetHolaKingdomEntities();
            var list = entities.Lessons.Where(o => o.CourseCategoryId == courseId && (o.Name.StartsWith(keysearch) || keysearch == "")).ToList();
            return list;
        }
    }
}