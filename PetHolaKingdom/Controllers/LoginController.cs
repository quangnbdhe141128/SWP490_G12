using Microsoft.AspNet.Identity;
using PetHolaKingdom.Helpers;
using PetHolaKingdom.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using static PetHolaKingdom.Helpers.UserLogin;
using IUser = PetHolaKingdom.Repository.IUser;

namespace PetHolaKingdom.Controllers
{
    [Authorize]
    public class LoginController : Controller
    {
        // GET: Login
        IUser user = new User();
        [AllowAnonymous]
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        public ActionResult Index(UserLogin user2)
        {

            if (ModelState.IsValid)
            {
                var pass = user.MD5Gende(user2.Password);
                var u = user.Login(user2.PhoneNo, user.MD5Gende(user2.Password));
                if (u != null)
                {
                    return RedirectToAction("Index", "Home");

                }// u = null
                else
                {
                    TempData["LoginErrorMessage"] = "Thông tin đăng nhập chưa chính xác";
                }
                TempData["LoginErrorMessage"] = "Thông tin đăng nhập chưa chính xác";
            }

            return View(user2);
        }


        [AllowAnonymous]
        public ActionResult AccessDenied()
        {
            return View();
        }
    }
}