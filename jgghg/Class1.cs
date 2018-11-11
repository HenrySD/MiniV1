using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace jgghg
{
    public class Class1
    {
        private SqlConnection cox;
        private string query;

        public Class1(){

            cox.Open();
           
            SqlDataAdapter SDA = new SqlDataAdapter(query, cox);
            SDA.SelectCommand.ExecuteNonQuery();
            cox.Close();
            

        }
    }
}