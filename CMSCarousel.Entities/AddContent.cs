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
        public bool IsActive { get; set; }
        public DateTime CreatedDate { get; set; }
    }
    public class AddContentViewModel
    {
        public List<thac_country> Countries { get; set; }
        public List<thac_service> Services { get; set; }
        public List<thac_language> Languages { get; set; }
    }
    public class GetContentViewModel
    {
        public thac_serviceoption ServiceOption { get; set; }
        public int ErrorStatus { get; set; }
        public string ErrorMessage { get; set; }
    }
}
