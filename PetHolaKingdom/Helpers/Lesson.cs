using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PetHolaKingdom.Helpers
{
    public class LessonViewPage
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime CreatedDate { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
        public int? CourseCategoryId { get; set; }
        public int LevelId { get; set; }
        public string LevelInfo { get; set; }
        public bool Status { get; set; }

        public IEnumerable<SelectListItem> Category_List { get; set; }

    }
}