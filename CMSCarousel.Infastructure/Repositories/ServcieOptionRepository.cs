using CMSCarousel.Infastructure.Abstract;
using CMSCarousel.Infastructure.Interfaces;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CMSCarousel.Entities;

namespace CMSCarousel.Infastructure.Repositories
{
    public class ServcieOptionRepository : DapperRepositoryBase, IServiceOption
    {

        public ServcieOptionRepository(IDbConnection conn, string conString)
        {
            _connection = conn;
            _connection.ConnectionString = conString;
        }

        public int InsertServiceOption(thac_serviceoption ServiceOption)
        {
             

            throw new NotImplementedException();
        }
    }
       
    }
