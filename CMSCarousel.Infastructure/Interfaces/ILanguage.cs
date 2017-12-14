using CMSCarousel.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMSCarousel.Infastructure.Interfaces
{
    public interface ILanguage
    {
        List<thac_language> GetLanguages();

        thac_language GetlanguageById(int id);
    }
}
