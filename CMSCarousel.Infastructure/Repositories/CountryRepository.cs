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
            parameters.Add("ReturnValue", null, DbType.Int32, ParameterDirection.Output);
            parameters.Add("ErrorCode", null, DbType.Int32, ParameterDirection.Output);
            parameters.Add("ErrorMessage", null, DbType.String, ParameterDirection.Output);

            Execute("sp_InsertCountry", parameters);
            return parameters.Get<int>("ReturnValue");
        }

        public int UpdateCountry(thac_country company)
        {
            var parameters = new DynamicParameters();
            parameters.Add("Id", company.Id, DbType.Int32);
            parameters.Add("Name", company.Name, DbType.String, ParameterDirection.Input);
            parameters.Add("NSId", company.NSId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("ReturnValue", null, DbType.Int32, ParameterDirection.Output);
            parameters.Add("ErrorCode", null, DbType.Int32, ParameterDirection.Output);
            parameters.Add("ErrorMessage", null, DbType.String, ParameterDirection.Output);

            Execute("sp_UpdateCountry", parameters);
            var errorCode = parameters.Get<int>("ReturnValue");
            var errorMessage = parameters.Get<string>("ErrorMessage");

            return parameters.Get<int>("ReturnValue");
        }

        public bool DeleteCountry(int id)
        {
            var parameters = new DynamicParameters();
            parameters.Add("Id", id, DbType.Int32);
            parameters.Add("ErrorCode", null, DbType.Int32, ParameterDirection.Output);
            parameters.Add("ErrorMessage", null, DbType.String, ParameterDirection.Output);

            Execute("sp_DeleteCountry", parameters);
            var errorCode = parameters.Get<int>("ErrorCode");
            return errorCode == 0;
        }
    }
}
