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
        public CourseList GetEditCourseById(int id)
        {
            return entity.Courses.Select(x => new CourseList
            {
                Id = x.id,
                Name = x.Name,
                Description = x.Description,
                Image = x.Image
            }).Where(x => x.Id == id).FirstOrDefault();
        }
        public bool EditCourse(CourseList list)
        {
            var edit = entity.Courses.Where(x => x.id == list.Id).FirstOrDefault();

            try
            {
                if (list.Image != null)
                {
                    edit.Image = list.Image;
                }
                edit.Name = list.Name;
                edit.Status = list.Status;
                edit.Description = list.Description;

                entity.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }

        }
        public bool AddCourse(CourseList list)
        {
            try
            {
                Cours obj = new Cours();
                obj.Image = list.Image;
                obj.Name = list.Name;
                obj.Status = true;
                obj.Description = list.Description;
                entity.Courses.Add(obj);
                entity.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }

        }
        public bool DeleteCourse(int id)
        {
            var delete = entity.Courses.Where(x => x.id == id).FirstOrDefault();

            try
            {


                delete.Status =false ;
               

                entity.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }

        }
    }
}