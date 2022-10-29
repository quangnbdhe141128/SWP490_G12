using PagedList;
using PetHolaKingdom.Models;
using PetHolaKingdom.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Curriculum = PetHolaKingdom.Repository.Curriculum;

namespace PetHolaKingdom.Controllers
{
    public class CurriculumController : Controller
    {
        // GET: Curriculum
        ICurriculum curri = new Curriculum();
        public ActionResult Index(int page = 1, int pageSize = 9, string keysearch = "")
        {
            ViewBag.KeySearch = keysearch;
            return View(curri.GetListCurriculum(keysearch).ToPagedList(page, pageSize));
        }
    }
}