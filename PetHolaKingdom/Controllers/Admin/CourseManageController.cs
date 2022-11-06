using PagedList;
using PetHolaKingdom.Helpers;
using PetHolaKingdom.Models;
using PetHolaKingdom.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PetHolaKingdom.Controllers.Admin
{
    public class CourseManageController : Controller
    {
        PetHolaKingdomEntities en = new PetHolaKingdomEntities();
        ICourse mediRes = new Course();
        // GET: CourseManage
        public ActionResult Index(String query, int page = 1, int pageSize = 8)
        {
            return View(en.Courses.Where(x => x.Name.StartsWith(query) || query == null).OrderBy(x => x.Name).ToList().ToPagedList(page, pageSize));
        }

        //[Route("CourseCategory/Edit/{id?}")]
        //public ActionResult Edit(int? id)
        //{
        //    var obj = en.Courses.Where(x => x.id == id).FirstOrDefault();
        //    CourseViewPage objView = new CourseViewPage { Name = obj.Name, Status = obj.Status };
        //    return View(objView);
        //}

        [HttpPost]
        [Route("CourseCategory/Edit/{id?}")]
        public ActionResult Edit(CourseViewPage Course, int id)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var obj = en.Courses.Where(x => x.id == id).FirstOrDefault();
                    obj.Name = Course.Name;
                    obj.Status = Course.Status;
                    obj.Description = Course.Description;
                    obj.Image = Course.Image;
                    en.SaveChanges();
                    TempData["Notify"] = "Cập nhật mới thành công";

                }
                catch (Exception)
                {
                    TempData["Notify"] = "Có lỗi xảy ra";
                    //throw;
                }

                return RedirectToAction("Index", "CourseCategory");
            }
            return View(Course);
        }

    }
}