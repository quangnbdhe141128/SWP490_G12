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
        private PetHolaKingdomEntities entity;

        public Curriculum()
        {
            entity = new PetHolaKingdomEntities();
        }
        public IEnumerable<CurriculumList> GetListCurriculum(string keysearch)
        {
            var query = (from curri in entity.Curricula
                        select new CurriculumList
                        {
                            Id = curri.id,
                            Name = curri.Name,
                            Image = curri.Image,
                            CreatedDate = curri.CreatedDate

                        }).Where(o=> o.Name.StartsWith(keysearch) || keysearch == "").ToList();
            return query;
        }
    
        public IEnumerable<CurriculumViewHome> GetListCurriculumHome()
        {
            var query = (from curri in entity.Curricula
                        orderby curri.CreatedDate descending
                        select new CurriculumViewHome
                        {
                            Id = curri.id,
                            Name = curri.Name,
                            Image = curri.Image,
                            CreatedDate = curri.CreatedDate

                        }).Take(4).ToList();
            return query;
        }
    }
}