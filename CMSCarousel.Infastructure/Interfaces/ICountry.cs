using CMSCarousel.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMSCarousel.Infastructure.Interfaces
{
    public interface ICountry
    {
        List<thac_country> GetCountries();
        thac_country GetCountryById(int id);
        int InsertCountry(thac_country company);
        int UpdateCountry(thac_country company);
        bool DeleteCountry(int id);
    }
}
