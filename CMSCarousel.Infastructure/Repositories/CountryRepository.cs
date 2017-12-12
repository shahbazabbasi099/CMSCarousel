using CMSCarousel.Entities;
using CMSCarousel.Infastructure.Abstract;
using CMSCarousel.Infastructure.Interfaces;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMSCarousel.Infastructure.Repositories
{
    public class CountryRepository : DapperRepositoryBase, ICountry
    {
        public CountryRepository(IDbConnection conn, string conString)
        {
            _connection = conn;
            _connection.ConnectionString = conString;
        }

       

        public List<thac_country> GetCountries()
        {
            return Query<thac_country>("sp_GetAllCountries").ToList();
        }

        public thac_country GetCountryById(int id)
        {
            return Query<thac_country>("sp_GetCountryById", new { Id = id }).FirstOrDefault();
        }

        public int InsertCountry(thac_country country)
        {
            var parameters = new DynamicParameters();
            parameters.Add("Name", country.Name, DbType.String, ParameterDirection.Input);
            parameters.Add("NSId", country.NSId, DbType.Int32, ParameterDirection.Input);
          //  parameters.Add("CreatedBy", company.CreatedBy, DbType.Int32, ParameterDirection.Input);
           // parameters.Add("CreatedDate", company.CreatedDate, DbType.DateTime, ParameterDirection.Input);
           // parameters.Add("UpdatedDate", company.UpdatedDate, DbType.DateTime, ParameterDirection.Input);
          //  parameters.Add("Status", company.Status, DbType.Int32, ParameterDirection.Input);
            parameters.Add("ReturnValue", null, DbType.Int32, ParameterDirection.Output);
            parameters.Add("ErrorCode", null, DbType.Int32, ParameterDirection.Output);

            Execute("sp_InsertCountry", parameters);
            return parameters.Get<int>("ReturnValue");
        }

        public int UpdateCountry(thac_country company)
        {
            throw new NotImplementedException();
        }

        public bool DeleteCountry(int id)
        {
            throw new NotImplementedException();
        }
    }
}
