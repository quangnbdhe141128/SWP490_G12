using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PetHolaKingdom.Helpers
{
    public class Curriculum
    {
        public int Id { get; set; }
        [Required]
        [StringLength(200)]
        public string Name { get; set; }
        public string Image { get; set; }
        public DateTime CreatedDate { get; set; }
    }
    public class CurriculumViewHome
    {
        public int Id { get; set; }
       
        public string Name { get; set; }
        public string Image { get; set; }
        public DateTime CreatedDate { get; set; }
    }
}