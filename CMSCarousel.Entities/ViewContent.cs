using System;
using System.Collections.Generic;
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
        public string UserName { get; set; }
        public string CreatedDate { get; set; }
        public int IsActive { get; set; }
    }
}
