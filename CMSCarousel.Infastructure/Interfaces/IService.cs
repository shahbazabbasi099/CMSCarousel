﻿using CMSCarousel.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMSCarousel.Infastructure.Interfaces
{
    public interface IService
    {
        List<thac_service> GetServices();
    }
}
