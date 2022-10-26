using PetHolaKingdom.Helpers;
using PetHolaKingdom.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PetHolaKingdom.Repository
{
    public class Curriculum : ICurriculum
    {
        private PetHolaKingdomEntities2 entity;

        public Curriculum()
        {
            entity = new PetHolaKingdomEntities2();
        }
        public IEnumerable<CurriculumViewHome> GetListCurriculumHome()
        {
            var query = from curri in entity.PetCategories

                        select new CurriculumViewHome
                        {
                            Id = curri.id,
                            Name = curri.Name,
                            Image = curri.Image,
                            CreatedDate = curri.CreatedDate

                        };
            return query;
        }
    }
}