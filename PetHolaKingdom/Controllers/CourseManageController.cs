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
        [Route("CourseManage/Edit/{id?}")]
        public ActionResult Edit(int? id)
        {
            var obj = entity.Courses.Where(x => x.id == id).FirstOrDefault();
            CourseList objView = new CourseList { Name = obj.Name,Description=obj.Description,Image=obj.Image, Status = obj.Status };
            return View(objView);
        }
        [HttpPost]
        [Route("CourseManage/Edit/{id?}")]
        public ActionResult Edit(CourseList list, int id)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var edit = entity.Courses.Where(x => x.id == id).FirstOrDefault();
                    edit.Name = list.Name;
                    edit.Status = list.Status;
                    edit.Description = list.Description;
                    edit.Image = list.Image;
                    entity.SaveChanges();
                    TempData["Notify"] = "Cập nhật mới thành công";
                }
                catch(Exception)
                {
                    TempData["Notify"] = "Có lỗi xảy ra";
                }
                          
                return RedirectToAction("Index", "CourseManage");
            }
            return View(list);
        }
    }
}