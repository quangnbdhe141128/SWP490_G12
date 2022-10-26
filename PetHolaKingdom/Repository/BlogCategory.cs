using PetHolaKingdom.Helpers;
using PetHolaKingdom.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PetHolaKingdom.Repository
{
    public class BlogCategory : IBlogCategory
    {
        private PetHolaKingdomEntities2 entity;
        public BlogCategory()
        {
            entity = new PetHolaKingdomEntities2();
        }
        public IEnumerable<BlogsCategory> GetBlogCategory()
        {
            return entity.BlogsCategories.ToList();
        }
    }
}