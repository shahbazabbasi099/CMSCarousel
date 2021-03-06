﻿using CMSCarousel.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMSCarousel.Infastructure.Interfaces
{
    public interface IServiceOption
    {
        int InsertServiceOption(AddContent addContent);

        thac_serviceoption GetServiceOptionByID(int countryId, int languageId, int servcieId);

        thac_serviceoption GetServiceOptionByID(int serviceOptionId);

        List<ViewContent> GetAllContent();
    }
}
