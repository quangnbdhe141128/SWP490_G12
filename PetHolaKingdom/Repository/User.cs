using PetHolaKingdom.Helpers;
using PetHolaKingdom.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace PetHolaKingdom.Repository
{
    public class User : IUser
    {
        private PetHolaKingdomEntities entity;

        public User()
        {
            entity = new PetHolaKingdomEntities();
        }
        public IEnumerable<Models.User> GetUser()
        {
            return entity.Users.ToList();
        }
        public Models.User Login(String phone, String pass)
        {
            return entity.Users.Where(x => x.PhoneNo == phone && x.Password == pass).FirstOrDefault();
        }
        public Models.User Register(UserRegister user)
        {
            Models.User user1 =new Models.User();
            user1.FirstName = user.FirstName;
            user1.MiddleName = user.MiddleName;
            user1.LastName = user.LastName;
            user1.Email = user.Email;
            user1.PhoneNo=user.PhoneNo;           
            user1.Password = MD5Gende(user.Password);
            entity.Users.Add(user1);
            entity.SaveChanges();
            return user1;
        }
        public UserProfile GetProfileById(int id)
        {
            var user_id = new UserProfile();
            user_id = (from u in entity.Users
                       where u.id == id
                       select new UserProfile
                       {
                           User_id = u.id,
                           FirstName = u.FirstName,
                           MiddleName = u.MiddleName,
                           LastName = u.LastName,
                           PhoneNo = u.PhoneNo,
                           Address = u.Address,
                           Email = u.Email,
                       }).FirstOrDefault();
            return user_id;
        }
        public UserProfile GetProfileByPhoneNo(string phoneNo)
        {
            var user_phone = new UserProfile();
            user_phone = (from u in entity.Users
                       where u.PhoneNo == phoneNo
                       select new UserProfile
                       {
                           User_id = u.id,
                           FirstName = u.FirstName,
                           MiddleName = u.MiddleName,
                           LastName = u.LastName,
                           PhoneNo = u.PhoneNo,
                           Address = u.Address,
                           Email = u.Email,
                           Password = u.Password,
                       }).FirstOrDefault();
            return user_phone;
        }
        public bool UpdateProfile(UserProfile profile)
        {
            var pro = entity.Users.Where(x => x.id == profile.User_id).FirstOrDefault();
            if (pro != null)
            {
                try
                {
                    pro.FirstName = profile.FirstName;
                    pro.MiddleName = profile.MiddleName;
                    pro.LastName = profile.LastName;
                    pro.Email = profile.Email;
                    pro.Address = profile.Address;
                    entity.SaveChanges();
                    return true;
                }
                catch (Exception)
                {

                    return false;
                }
            }
            else
            {
                return false;
            }

        }
        public bool ChangePassword(ChangePassword changePass)
        {
            var change = entity.Users.Where(x => x.id == changePass.User_id).FirstOrDefault();
            if (change != null)
            {
                try
                {
                    change.Password = MD5Gende(changePass.newPassword);
                    entity.SaveChanges();
                    return true;
                }
                catch (Exception)
                {

                    return false;
                }
            }
            else
            {
                return false;
            }

        }
        public string MD5Gende(string pass)
        {
            MD5 mh = MD5.Create();
            //Chuyển kiểu chuổi thành kiểu byte
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(pass);
            //mã hóa chuỗi đã chuyển
            byte[] hash = mh.ComputeHash(inputBytes);
            //tạo đối tượng StringBuilder (làm việc với kiểu dữ liệu lớn)
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }
            return sb.ToString();
        }
    }
}