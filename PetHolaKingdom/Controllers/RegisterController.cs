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
    public class RegisterController : Controller
    {
        PetHolaKingdomEntities entity =new PetHolaKingdomEntities();
        IUser user = new Repository.User();
        public ActionResult Index()
        {
            UserRegister u1 =new UserRegister();
            return View(u1);
        }
        [HttpPost]
        public ActionResult Index(UserRegister u2)
        {
            UserRegister u1 = new UserRegister();
            if(ModelState.IsValid)
            {
                try
                {
                    UserRegister add_u = new UserRegister
                    {
                        FirstName = u2.FirstName,
                        MiddleName = u2.MiddleName,
                        LastName = u2.LastName,
                        PhoneNo = u2.PhoneNo,
                        Password = u2.Password,
                        Email = u2.Email
                    };
                    user.Register(add_u);
                    TempData["Notify"] = "Tạo tài khoản thành công ! Mời Đăng nhập";
                    return RedirectToAction("Index", "Login");
                }
                catch (Exception)
                {
                    TempData["Notify"] = "Có lỗi xảy ra";
                }
                return RedirectToAction("Index", "Register");
            }
            return View(u2);
        }
    }
}