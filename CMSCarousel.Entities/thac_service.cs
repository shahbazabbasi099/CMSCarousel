//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CMSCarousel.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class thac_service
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public thac_service()
        {
            this.thac_serviceoption = new HashSet<thac_serviceoption>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public string ImageUrl { get; set; }
        public string ServiceCode { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<thac_serviceoption> thac_serviceoption { get; set; }
    }
}
