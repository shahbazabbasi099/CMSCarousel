using CMSCarousel.Infastructure.Abstract;
using CMSCarousel.Infastructure.Interfaces;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CMSCarousel.Entities;
using Dapper;
using System.Diagnostics;

namespace CMSCarousel.Infastructure.Repositories
{
    public class ServcieOptionRepository : DapperRepositoryBase, IServiceOption
    {

        public ServcieOptionRepository(IDbConnection conn, string conString)
        {
            _connection = conn;
            _connection.ConnectionString = conString;
        }

        public thac_serviceoption GetServiceOptionByID(int countryId, int languageId, int servcieId)
        {
            return Query<thac_serviceoption>("sp_GetContentByServcieId", new { CountryId = countryId, LanguageId = languageId, ServiceId = servcieId }).FirstOrDefault();
        }

        public int InsertServiceOption(AddContent addcontent)
        {
            try
            {
                var parameters = new DynamicParameters();
                parameters.Add("CountryId", addcontent.CountryId, DbType.String, ParameterDirection.Input);
                parameters.Add("LanguageId", addcontent.LanguageId, DbType.Int32, ParameterDirection.Input);
                parameters.Add("UserId", addcontent.CreatedUserId, DbType.String, ParameterDirection.Input);
                parameters.Add("ServiceId", addcontent.ServiceId, DbType.Int32, ParameterDirection.Input);
                parameters.Add("IsActive", addcontent.IsActive, DbType.Boolean, ParameterDirection.Input);
                parameters.Add("ContentMessage", addcontent.ContentMessage, DbType.String, ParameterDirection.Input);


                parameters.Add("ReturnValue", null, DbType.Int32, ParameterDirection.Output);
                parameters.Add("ErrorCode", null, DbType.Int32, ParameterDirection.Output);
                //parameters.Add("ErrorMessage", null, DbType.String, ParameterDirection.Output,size:250);

                Execute("sp_InsertContent", parameters);

                return parameters.Get<int>("ReturnValue");
            }
            catch (Exception ex)
            {

                Trace.TraceError(ex.Message.ToString());
                return 0;
            }
        }


        public List<ViewContent> GetAllContent()
        {
            return Query<ViewContent>("sp_GetAllContent").ToList();
        }

    }

}
