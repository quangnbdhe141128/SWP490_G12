using PetHolaKingdom.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PetHolaKingdom.Controllers
{
    public class HomeController : Controller
    {
        IBlog blog = new Blog();
        ICurriculum curri = new Curriculum();
        public ActionResult Index()
        {
            ViewBag.lstblog = blog.GetListBlogHome();
            ViewBag.lstcurri= curri.GetListCurriculumHome();
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}