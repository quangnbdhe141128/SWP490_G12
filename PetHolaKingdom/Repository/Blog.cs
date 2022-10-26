using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;
using PetHolaKingdom.Helpers;
using PetHolaKingdom.Models;

namespace PetHolaKingdom.Repository
{
    public class Blog : IBlog
    {
        private PetHolaKingdomEntities2 entity;

        public Blog()
        {
            entity = new PetHolaKingdomEntities2();
        }
        public IEnumerable<BlogViewHome> GetListBlogHome()
        {
            var query = from blog in entity.Blogs
                        join cat in entity.BlogsCategories on blog.blog_category_id equals cat.id
                        select new BlogViewHome
                        {
                            Id = blog.id,
                            Title = blog.title,
                            Image = blog.Image,
                            BlogCategoryName = cat.name
                            
                        };
            return query;
        }
    }
}