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

        public List<Cours> GetCoursePageList(int catId, string keysearch)
        {
            PetHolaKingdomEntities entities = new PetHolaKingdomEntities();
            var list = entities.Courses.Where(o => o.CurriculumId == catId && (o.Name.StartsWith(keysearch) || keysearch == "")).ToList();
            return list;
        }
        public Cours GetCourseDetail(int Id)
        {
            PetHolaKingdomEntities entities = new PetHolaKingdomEntities();
            var obj = entities.Courses.Where(o => o.id == Id).FirstOrDefault();
            return obj;

        }
    }
}