using PagedList;
using PetHolaKingdom.Helpers;
using PetHolaKingdom.Models;
using PetHolaKingdom.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PetHolaKingdom.Controllers
{
    public class CourseManageController : Controller
    {
        PetHolaKingdomEntities entity = new PetHolaKingdomEntities();
        ICourse course=new Course();
        // GET: CourseManage
        public ActionResult Index(int page = 1, int pageSize = 2, string keysearch = "")
        {
            ViewBag.KeySearch = keysearch;
            return View(course.GetCourseList(keysearch).ToPagedList(page, pageSize));
        }
        [HttpGet]
        public ActionResult Edit(int id)
        {
            
            CourseList list = course.GetEditCourseById(id);
            return View(list);
        }
        [HttpPost]
        public ActionResult Edit(CourseList list)
        {
            if (ModelState.IsValid)
            {
                if (list.Files[0] != null)
                {
                   // if (list.Files[0].ContentType == "image/png" && list.Files[0].ContentType == "image/jpeg")
                 //   {
                        list.Files[0].SaveAs(HttpContext.Server.MapPath("~/Assets/images/course/") + list.Files[0].FileName);
                        list.Image = list.Files[0].FileName;
                  //  }
                //    else
                 //   {
                  //      TempData["Notify"] = "Only access image file";
                 //       return View();
                  //  }

                }
                if (course.EditCourse(list))
                {
                    TempData["Notify"] = "Update sucess";
                    return RedirectToAction("Index", "CourseManage");
                }
                else
                {
                    TempData["Notify"] = "Có lỗi xảy ra";
                }
            }
            return View(list);
        }
        [HttpGet]
        public ActionResult Add()
        {

            CourseList list = new CourseList();
            return View(list);
        }
        public ActionResult Add(CourseList list)
        {

            if (ModelState.IsValid)
            {
                if (list.Files[0] != null)
                {
                    // if (list.Files[0].ContentType == "image/png" && list.Files[0].ContentType == "image/jpeg")
                    //   {
                    list.Files[0].SaveAs(HttpContext.Server.MapPath("~/Assets/images/course/") + list.Files[0].FileName);
                    list.Image = list.Files[0].FileName;
                    //  }
                    //    else
                    //   {
                    //      TempData["Notify"] = "Only access image file";
                    //       return View();
                    //  }

                }
                if (course.AddCourse(list))
                {
                    TempData["Notify"] = "Update sucess";
                    return RedirectToAction("Index", "CourseManage");
                }
                else
                {
                    TempData["Notify"] = "Có lỗi xảy ra";
                }
            }
            return View(list);
        }
        [HttpGet]
        public ActionResult Delete(int id)
        {
            course.DeleteCourse(id);
            return RedirectToAction("Index");
        }
    }
}