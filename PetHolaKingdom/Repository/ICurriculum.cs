using PetHolaKingdom.Helpers;
using PetHolaKingdom.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetHolaKingdom.Repository
{
    internal interface ICurriculum
    {
        IEnumerable<CurriculumList> GetListCurriculum(string keysearch);
        IEnumerable<CurriculumViewHome> GetListCurriculumHome();
    }
}
