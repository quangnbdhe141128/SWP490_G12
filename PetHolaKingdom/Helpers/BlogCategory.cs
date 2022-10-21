using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PetHolaKingdom.Helpers
{
    public class BlogCategory
    {
        [Required]
        [StringLength(200)]
        public string Name { get; set; }

        public DateTime CreatedDate { get; set; }

    }
}