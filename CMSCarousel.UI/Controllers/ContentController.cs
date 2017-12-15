using CMSCarousel.Entities;
using CMSCarousel.Infastructure.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CMSCarousel.UI.Controllers
{

   // [Authorize]
    public class ContentController : Controller
    {

        private ICountry iCountry;
        private IService iService;
        private ILanguage iLanguage;

        public ContentController(ICountry iCountry, IService iService, ILanguage iLanguage)
        {
            this.iCountry = iCountry;
            this.iService = iService;
            this.iLanguage = iLanguage;
        }

        // GET: Content
        public ActionResult AddContent()
        {
            AddContentViewModel contentModel = new AddContentViewModel();
            try
            {               
                List<thac_country> countries = iCountry.GetCountries();
                List<thac_language> languages = iLanguage.GetLanguages();
                List<thac_service> services = iService.GetServices();                
                contentModel.Countries = countries;
                contentModel.Languages = languages;
                contentModel.Services = services;
            }
            catch(Exception ex)
            {

            }
            return View(contentModel);
        }
        
        public JsonResult GetContent(string serviceId, string languageId, string countryId)
        {
            
            return Json("");
        }

    }
}