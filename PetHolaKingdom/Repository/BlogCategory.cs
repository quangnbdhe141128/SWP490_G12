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
        private PetHolaKingdomEntities entity;
        public BlogCategory()
        {
            entity = new PetHolaKingdomEntities();
        }
        public IEnumerable<BlogsCategory> GetBlogCategory()
        {
            return entity.BlogsCategories.ToList();
        }
    }
}