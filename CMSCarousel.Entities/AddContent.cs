using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMSCarousel.Entities
{
    public class AddContent
    {
        public int Id { get; set; }

        public string CreatedUserId { get; set; }

        public int ServiceId { get; set; }

        public int CountryId { get; set; }
        public int LanguageId { get; set; }
        public string ContentMessage { get; set; }
        public DateTime CreatedDate { get; set; }
    }
}
