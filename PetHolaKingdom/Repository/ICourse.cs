﻿using PetHolaKingdom.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetHolaKingdom.Repository
{
    internal interface ICourse
    {
        List<Cours> GetCoursePageList(int catId, string keysearch);
        Cours GetCourseDetail(int Id);
    }
}
