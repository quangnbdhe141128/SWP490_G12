using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using static System.Collections.Specialized.BitVector32;

namespace PetHolaKingdom.Helpers
{
    public class CourseViewPage
    {
        
        public int Id { get; set; }
        [Required]
        [StringLength(200)]
        public string Name { get; set; }     
        public string Image { get; set; }
        public string Banner { get; set; }
        public string Description { get; set; }
        public DateTime CreatedDate { get; set; }    
        public int CurriculumId { get; set; }
        public string LevelCourse { get; set; }
        public bool Status { get; set; }

    }
    public class CourseList
    {
        public int Id { get; set; }
        [Required]
        [StringLength(200)]
        public string Name { get; set; }
        [AllowHtml]
        public string Description { get; set; }
        public string Image { get; set; }
        public List<HttpPostedFileBase> Files { get; set; }

        public bool Status { get; set; }

    }
}