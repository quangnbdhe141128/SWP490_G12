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
        public IEnumerable<Cours> GetCourse()
        {
            return entity.Courses.ToList();
        }

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
        public List<Cours> GetCourseList(string keysearch)
        {
            PetHolaKingdomEntities entities = new PetHolaKingdomEntities();
            var list = entities.Courses.Where(o => o.Name.StartsWith(keysearch) || keysearch == "").ToList();
            return list;
        }
 /*       public bool EditCourse(CourseList list, int id)
        {
            var edit = entity.Courses.Where(x => x.id == id).FirstOrDefault();
            if (edit != null)
            {
                try
                {
                    edit.Name=list.Name;
                    edit.Status=list.Status;
                    edit.Description=list.Description;
                    edit.Image=list.Image;
                    entity.SaveChanges();
                    return true;
                }
                catch (Exception)
                {

                    return false;
                }
            }
            else
            {
                return false;
            }

        }
 */
    }
}