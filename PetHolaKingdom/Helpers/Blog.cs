using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PetHolaKingdom.Helpers
{
    public class Blog
    {
        [Required]
        public int? BlogCategoryId { get; set; }
        [Required]
        public int UserId { get; set; }
        [Required]
        [StringLength(100)]
        public string Title { get; set; }

        [Required]
        [StringLength(300)]
        public string BriefInfor { get; set; }

        [Required]
        [StringLength(6000)]
        public string Description { get; set; }
        [Required]
        [StringLength(300)]
        public string image { get; set; }
        [Required]
        [StringLength(300)]
        public string Banner { get; set; }

        public DateTime Addeddate { get; set; }
        public bool Status { get; set; }


        public IEnumerable<SelectListItem> Category_List { get; set; }
    }
    public class BlogViewHome
    {
        public int Id { get; set; }
        public string Title { get; set; }

        public string Image { get; set; }

        public string BlogCategoryName { get; set; }
        public DateTime? Addeddate { get; set; }
        public bool Status { get; set; }
    }
}