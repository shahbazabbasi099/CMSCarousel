﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class cms_carouselEntities : DbContext
    {
        public cms_carouselEntities()
            : base("name=cms_carouselEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AspNetRole> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaim> AspNetUserClaims { get; set; }
        public virtual DbSet<AspnetUserLogin> AspnetUserLogins { get; set; }
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<thac_country> thac_country { get; set; }
        public virtual DbSet<thac_language> thac_language { get; set; }
        public virtual DbSet<thac_languageoption> thac_languageoption { get; set; }
        public virtual DbSet<thac_service> thac_service { get; set; }
        public virtual DbSet<thac_serviceoption> thac_serviceoption { get; set; }
    }
}