using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetHolaKingdom.Repository
{
    internal interface IUser
    {
        IEnumerable<Models.User> GetUser();
        Models.User Login(String phone, String pass);
        string MD5Gende(string pass);
    }
}
