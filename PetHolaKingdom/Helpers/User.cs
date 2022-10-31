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
        public string FirstName { get; set; }
        [Required]
        [StringLength(200)]
        public string MiddleName { get; set; }
        [Required]
        [StringLength(200)]
        public string LastName { get; set; }
        [Required]
        [EmailAddressAttribute]
        public string Email { get; set; }
        [Required]
        [StringLength(11)]
        [RegularExpression("^[0-9]*$", ErrorMessage = "Mobile only accept number")]
        public string PhoneNo { get; set; }

        
        [Required]
        public string Password { get; set; }
        public int Role { get; set; }
    }
    public class UserProfile
    {
        public int User_id { get; set; }
        [Required]
        public string Full_Name { get; set; }
        public string PhoneNo { get; set; }
        [EmailAddressAttribute]
        public string Email { get; set; }
        public string Password { get; set; }
        public int Role { get; set; }
    }

}