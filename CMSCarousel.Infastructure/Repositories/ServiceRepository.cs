using CMSCarousel.Entities;
using CMSCarousel.Infastructure.Abstract;
using CMSCarousel.Infastructure.Interfaces;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMSCarousel.Infastructure.Repositories
{
    public class ServiceRepository:DapperRepositoryBase, IService
    {
       
     
            public ServiceRepository(IDbConnection conn, string conString)
            {
                _connection = conn;
                _connection.ConnectionString = conString;
            }

            public List<thac_service> GetLanguages()
            {
                return Query<thac_service>("sp_GetAllServcies").ToList();
            }
        }
}
