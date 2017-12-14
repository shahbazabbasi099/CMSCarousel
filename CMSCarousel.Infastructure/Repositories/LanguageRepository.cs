using CMSCarousel.Infastructure.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CMSCarousel.Entities;
using System.Data;
using CMSCarousel.Infastructure.Abstract;

namespace CMSCarousel.Infastructure.Repositories
{
    public class LanguageRepository : DapperRepositoryBase, ILanguage
    {
        public LanguageRepository(IDbConnection conn, string conString)
        {
            _connection = conn;
            _connection.ConnectionString = conString;
        }
        
        public List<thac_language> GetLanguages()
        {
            return Query<thac_language>("sp_GetAllLanguages").ToList();
        }

        public thac_language GetlanguageById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
