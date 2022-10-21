using PetHolaKingdom.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PetHolaKingdom.Repository
{
    internal interface IBlog
    {
        IEnumerable<BlogViewHome> GetListBlogHome();
    }
}