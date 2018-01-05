using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMSCarousel.Entities
{
    public class ViewContent
    {
        public string Country { get; set; }
        public string Language { get; set; }
        public string ServiceName { get; set; }
        public string ContentMessage { get; set; }
        public string ContentTitle { get; set; }
        public string CreatedUserName { get; set; }
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}")]
        public DateTime CreatedDate { get; set; }
        public int IsActive { get; set; }
        public string UpdatedUserName { get; set; }

        public DateTime UpdatedDate { get; set; }
    }
    
    public class ViewContentModel
    {
        public List<ViewContent> Content { get; set; }
        public List<thac_country> Countries { get; set; }
        public List<thac_service> Services { get; set; }
        public List<thac_language> Languages { get; set; }
        public string SelectedCountry { get; set; }
        public string SelectedLanguage { get; set; }
        public string SelectedService { get; set; }
        public string SelectedStatus { get; set; }
        public string SelectedFromDate { get; set; }
        public string SelectedToDate { get; set; }
    }
}
