using PetHolaKingdom.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PetHolaKingdom.Repository
{
    internal interface IBlogCategory
    {
        IEnumerable<BlogsCategory> GetBlogCategory();
    }
}