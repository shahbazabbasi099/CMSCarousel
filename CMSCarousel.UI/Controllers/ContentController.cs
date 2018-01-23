using CMSCarousel.Entities;
using CMSCarousel.Infastructure.Interfaces;
using CMSCarousel.UI.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CMSCarousel.UI.Controllers
{

    [Authorize]
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

        #region AddContent Page

        public ActionResult AddContent(string serviceId, string languageId, string countryId)
        {
            AddContentViewModel contentModel = new AddContentViewModel();
            try
            {
                List<thac_country> countries = iCountry.GetCountries();
                List<thac_language> languages = iLanguage.GetLanguages();
                List<thac_service> services = iService.GetServices();
                contentModel.ServiceId = -1;
                contentModel.CountryId = -1;
                contentModel.LanguageId = -1;
                contentModel.IsActive = false;
                contentModel.ContentTitle = "";
                contentModel.ContentMessage = "";
                if (!string.IsNullOrEmpty(serviceId) && !string.IsNullOrEmpty(languageId) && !string.IsNullOrEmpty(countryId))
                {
                    thac_serviceoption serviceOption = iServiceOption.GetServiceOptionByID(int.Parse(countryId), int.Parse(languageId), int.Parse(serviceId));
                    if (serviceOption != null)
                    {
                        contentModel.ServiceId = int.Parse(serviceId);
                        contentModel.CountryId = int.Parse(countryId);
                        contentModel.LanguageId = int.Parse(languageId);
                        contentModel.IsActive = serviceOption.IsActive;
                        contentModel.ContentTitle = serviceOption.ContentTitle;
                        contentModel.ContentMessage = serviceOption.ContentMessage;
                    }
                }
                contentModel.Countries = countries;
                contentModel.Languages = languages;
                contentModel.Services = services;
            }
            catch (Exception ex)
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
            catch (Exception ex)
            {
                getContentModel.ServiceOption = null;
                getContentModel.ErrorStatus = 1;
                getContentModel.ErrorMessage = ex.Message;
            }
            return Json(getContentModel);
        }

        public JsonResult SaveContent(string serviceId, string languageId, string countryId, bool isActive, string title, string content)
        {

            try
            {
                AddContent addContent = new AddContent();

                var userID = User.Identity.GetUserId();

                addContent.CreatedUserId = userID;//"00dc06ad-0743-422b-8a79-f14f4a5340cb";
                addContent.ServiceId = int.Parse(serviceId);
                addContent.LanguageId = int.Parse(languageId);
                addContent.CountryId = int.Parse(countryId);
                addContent.IsActive = isActive;
                addContent.ContentTitle = title;
                addContent.ContentMessage = content;
                //addContent.CreatedDate = DateTime.Now;

                int result = iServiceOption.InsertServiceOption(addContent);
                var response = new { Result = result, ErrorMessage = "" };
                return Json(response);
            }
            catch (Exception ex)
            {
                var response = new { Result = -1, ErrorMessage = ex.Message };
                return Json(response);
            }

        }


        #endregion AddContent Page




        #region ViewContent Page

        public static List<ViewContent> MainContentList { get; set; }


        List<ViewContent> FilterContentList = new List<ViewContent>();


        ViewContentModel response = new ViewContentModel();


        public ActionResult ViewContent()
        {

            try
            {
                var list = iServiceOption.GetAllContent();

                MainContentList = new List<ViewContent>(list);                
                response.Content = list;
                response.SelectedCountry = "-1";
                response.SelectedLanguage = "-1";
                response.SelectedService = "-1";
                response.SelectedStatus = "-1";
                response.SelectedFromDate = "";
                response.SelectedToDate = "";
                ViewDropContentList();
                return View(response);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message.ToString());
            }
            return View(response);
        }



        #endregion ViewContent Page


        #region Search Content 

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SearchContent(string country, string language, string service, string status, string toDate, string fromDate)
        {

            FilterContentList = MainContentList;

            if (country != "-1")
            {

                FilterContentList = FilterContentList.Where(x => x.Country == country).ToList();

            }
            if (language != "-1")
            {

                FilterContentList = FilterContentList.Where(x => x.Language == language).ToList();

            }
            if (service != "-1")
            {

                FilterContentList = FilterContentList.Where(x => x.ServiceName == service).ToList();

            }
            if (status != "-1")
            {

                FilterContentList = FilterContentList.Where(x => x.IsActive == int.Parse(status)).ToList();

            }
            if (!string.IsNullOrWhiteSpace(fromDate))
            {
                DateTime date = Convert.ToDateTime(fromDate);                
                FilterContentList = FilterContentList.Where(x => Convert.ToDateTime(x.UpdatedDate.ToShortDateString()) >= date).ToList();

            }
            
            if (!string.IsNullOrWhiteSpace(toDate))
            {
                DateTime date = Convert.ToDateTime(toDate);
                FilterContentList = FilterContentList.Where(x => Convert.ToDateTime(x.UpdatedDate.ToShortDateString()) <= date).ToList();
            }
            
            response.Content = FilterContentList;
            response.SelectedCountry = country;
            response.SelectedLanguage = language;
            response.SelectedService = service;
            response.SelectedStatus = status;
            response.SelectedFromDate = fromDate;
            response.SelectedToDate = toDate;
            // populate all droplist 
            ViewDropContentList();


            // return View Content Page and its model
            return View("ViewContent", response);
        }
        #endregion Search Content 


        private void ViewDropContentList()
        {
            List<thac_country> countries = iCountry.GetCountries();
            List<thac_language> languages = iLanguage.GetLanguages();
            List<thac_service> services = iService.GetServices();

            response.Countries = countries;
            response.Languages = languages;
            response.Services = services;
        }
    }
}