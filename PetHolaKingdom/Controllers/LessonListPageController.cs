using PetHolaKingdom.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PetHolaKingdom.Controllers
{
    public class LessonListPageController : Controller
    {
        ILesson lesson = new Lesson();
        // GET: LessonListPage
        public ActionResult Index()
        {
            ViewBag.lstlesson = lesson.GetListLessonPage();
            return View();
        }
    }
}