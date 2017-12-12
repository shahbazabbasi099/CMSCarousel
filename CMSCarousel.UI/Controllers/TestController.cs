using CMSCarousel.Infastructure.Interfaces;
using CMSCarousel.Infastructure.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CMSCarousel.UI.Controllers
{
    public class TestController : Controller
    {
        private ICountry country;
        public TestController(ICountry icountry)
        {
            country = icountry;
        }

        // GET: Test
        public ActionResult Index()
        {
            try
            {
                var getCompanies = country.GetCountries();
               
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception.Message);
            }
         
            return View();
        }

    }
}