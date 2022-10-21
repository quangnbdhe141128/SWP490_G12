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
        private PetHolaKingdomEntities entity;

        public Blog()
        {
            entity = new PetHolaKingdomEntities();
        }
        public IEnumerable<BlogViewHome> GetListBlogHome()
        {
            var query = from blog in entity.Blogs
                        join cat in entity.BlogsCategories on blog.blog_category_id equals cat.id
                        select new BlogViewHome
                        {
                            Id = blog.id,
                            Title = blog.title,
                            ThumbNail = blog.thumbnail,
                            BlogCategoryName = cat.name
                            
                        };
            return query;
        }
    }
}