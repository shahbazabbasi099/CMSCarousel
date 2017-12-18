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
        private IServiceOption iServiceOption;

        public ContentController(ICountry iCountry, IService iService, ILanguage iLanguage, IServiceOption iServiceOption)
        {
            this.iCountry = iCountry;
            this.iService = iService;
            this.iLanguage = iLanguage;
            this.iServiceOption = iServiceOption;
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
            GetContentViewModel getContentModel = new GetContentViewModel();
            try
            {
                thac_serviceoption serviceOption = iServiceOption.GetServiceOptionByID(int.Parse(countryId), int.Parse(languageId), int.Parse(serviceId));
                if (serviceOption == null)
                {
                    getContentModel.ServiceOption = null;
                    getContentModel.ErrorStatus = 1;
                    getContentModel.ErrorMessage = "Data Not Found";
                }
                else
                {
                    getContentModel.ServiceOption = serviceOption;
                    getContentModel.ErrorStatus = 0;
                    getContentModel.ErrorMessage = "";
                }
            }
            catch(Exception ex)
            {
                getContentModel.ServiceOption = null;
                getContentModel.ErrorStatus = 1;
                getContentModel.ErrorMessage = ex.Message;
            }
            return Json(getContentModel);
        }
        
        public JsonResult SaveContent(string serviceId, string languageId, string countryId, bool isActive, string content)
        {
            
            try
            {
                AddContent addContent = new AddContent();
                addContent.ServiceId = int.Parse(serviceId);
                addContent.LanguageId = int.Parse(languageId);
                addContent.CountryId = int.Parse(countryId);
                addContent.IsActive = isActive;
                addContent.ContentMessage = content;
                addContent.CreatedDate = DateTime.Now;
                addContent.CreatedUserId = "sdsfg";
                int result = iServiceOption.InsertServiceOption(addContent);
                var response = new {Result = result, ErrorMessage = "" };
                return Json(response);
            }
            catch (Exception ex)
            {
                var response = new { Result = -1, ErrorMessage = ex.Message };
                return Json(response);
            }
           
        }

    }
}