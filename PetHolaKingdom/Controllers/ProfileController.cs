using Microsoft.AspNet.Identity;
using PetHolaKingdom.Helpers;
using PetHolaKingdom.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IUser = PetHolaKingdom.Repository.IUser;

namespace PetHolaKingdom.Controllers
{
    [Authorize]
    public class ProfileController : Controller
    {
        IUser user= new User();
        // GET: Profile
        public ActionResult Index()
        {
            var viewProfile = user.GetProfileByPhoneNo(User.Identity.GetUserName());
            ViewBag.User = viewProfile;
            return View(viewProfile);
        }
        [HttpPost]
        public ActionResult Index(UserProfile viewProfile)
        {
            if (ModelState.IsValid)
            {
                if (user.UpdateProfile(viewProfile))
                {
                    TempData["Notify"] = "Update sucess";
                    return RedirectToAction("Index", "Profile");
                }
                else
                {
                    TempData["Notify"] = "Có lỗi xảy ra";
                }

            }
            ViewBag.User = viewProfile;
            return View(viewProfile);
        }
        public ActionResult ChangePassword()
        {
            var model = user.GetProfileByPhoneNo(User.Identity.GetUserName());
            ViewBag.User = model;
            return View();
        }

        [HttpPost]
        public ActionResult ChangePassword(ChangePassword changePass)
        {
            if (ModelState.IsValid)
            {
                var change = user.GetProfileByPhoneNo(User.Identity.GetUserName());
                if (user.MD5Gende(changePass.oldPassword) != change.Password)
                {
                    TempData["Error"] = "OldPassword is incorrect";
                    return View(changePass);
                }
                changePass.User_id=change.User_id;
                if (user.ChangePassword(changePass))
                {
                    TempData["Notify"] = "Update sucess";
                    return RedirectToAction("ChangePassword", "Profile");
                }
                else
                {
                    TempData["Error"] = "Có lỗi xảy ra";
                }

            }
            ViewBag.User = user.GetProfileByPhoneNo(User.Identity.GetUserName());
            return View(changePass);
        }
    }
}