using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PetHolaKingdom.Helpers
{
    public class Course
    {
        [Required]
        [StringLength(200)]
        public string Name { get; set; }

        public string Thumbnail { get; set; }
        public string Banner { get; set; }
        public string Description { get; set; }
        public DateTime CreatedDate { get; set; }
    }
    public class CourseViewHome
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public string ThumbNail { get; set; }
        public string Description { get; set; }
        public DateTime CreatedDate { get; set; }
    }
}