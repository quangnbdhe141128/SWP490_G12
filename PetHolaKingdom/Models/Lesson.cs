//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PetHolaKingdom.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Lesson
    {
        public int id { get; set; }
        public string Name { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public string Description { get; set; }
        public string thumbnail { get; set; }
        public string banner { get; set; }
        public int CourseCategoryId { get; set; }
        public int LessonLevel { get; set; }
    
        public virtual Course Cours { get; set; }
    }
}
