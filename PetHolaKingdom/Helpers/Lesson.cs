using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PetHolaKingdom.Helpers
{
    public class LessonViewPage
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public DateTime CreatedDate { get; set; }
        public string Description { get; set; }
        public string ThumbNail { get; set; }
        
        public string LevelCourse { get; set; }
  
    }
}