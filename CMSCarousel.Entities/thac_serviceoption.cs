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
    
    public partial class thac_serviceoption
    {
        public int Id { get; set; }
        public string CreatedUserId { get; set; }
        public int ServiceId { get; set; }
        public int LanguageOptionId { get; set; }
        public string ContentMessage { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public bool IsActive { get; set; }
        public string UpdatedUserId { get; set; }
        public System.DateTime UpdatedDate { get; set; }
        public string ContentTitle { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual AspNetUser AspNetUser1 { get; set; }
        public virtual thac_languageoption thac_languageoption { get; set; }
        public virtual thac_service thac_service { get; set; }
    }
}
