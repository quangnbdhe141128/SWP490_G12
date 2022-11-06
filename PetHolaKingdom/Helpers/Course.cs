using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PetHolaKingdom.Helpers
{
    public class CourseViewPage
    {
        [Required]
        [StringLength(200)]
        public int Id { get; set; }
        public string Name { get; set; }
        [AllowHtml]
        public string Image { get; set; }
        public string Banner { get; set; }
        public string Description { get; set; }
        public DateTime CreatedDate { get; set; }    
        public int CurriculumId { get; set; }
        public string LevelCourse { get; set; }
        public bool Status { get; set; }

    }
}