using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PetHolaKingdom.Helpers
{

        public class UserLogin
        {
            [Required]
            [StringLength(11)]
            [RegularExpression("^[0-9]*$", ErrorMessage = "Mobile only accept number")]
            public string PhoneNo { get; set; }

            [Required]
            [EmailAddressAttribute]
            public string Email { get; set; }
            [Required]
            public string Password { get; set; }
        }

        public class UserRegister
        {
            [Required]
            [StringLength(200)]
            public string DisplayName { get; set; }
            [Required]
            [StringLength(11)]
            [RegularExpression("^[0-9]*$", ErrorMessage = "Mobile only accept number")]
            public string PhoneNo { get; set; }

            [Required]
            [EmailAddressAttribute]
            public string Email { get; set; }
            [Required]
            public string Password { get; set; }
            public int Role { get; set; }
        }
    
}