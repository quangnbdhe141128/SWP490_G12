using PagedList;
using PetHolaKingdom.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PetHolaKingdom.Controllers
{
    public class CoursePageController : Controller
    {
        // GET: CoursePage
        ICourse course=new Course();
        ILesson lesson=new Lesson();
        public ActionResult Index(int Id, int page=1, int pageSize= 9, string keysearch="")
        {
            ViewBag.KeySearch = keysearch;
            return View(course.GetCoursePageList(Id,keysearch).ToPagedList(page, pageSize));
        }
        [Route("CoursePage/Detail/{id?}")]
        public ActionResult Detail(int Id, int page = 1, int pageSize = 9, string keysearch = "")
        {

            ViewBag.Description = course.GetCourseDetail(Id).Description;
            ViewBag.Name = course.GetCourseDetail(Id).Name;
            ViewBag.Image = course.GetCourseDetail(Id).Image;
            return View(lesson.GetLessonPageList(Id, keysearch).ToPagedList(page, pageSize));
        }
    }
}