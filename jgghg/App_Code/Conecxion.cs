using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace jgghg.App_Code
{

    public class Conexion
    {
        private static SqlConnection objConexion;
        private static string error;


        public static SqlConnection getConexion()
        {

            if (objConexion != null)
            
                return objConexion;
                objConexion = new SqlConnection();
                objConexion.ConnectionString = "Data Source=SQL7004.site4now.net;Initial Catalog=DB_A41A57_HenrySD;User Id=DB_A41A57_HenrySD_admin;Password=123456789LOPEZ";
            
            try
            {
                objConexion.Open();
                return objConexion;
            }
            catch (Exception e)
            {
                error = e.Message;
                return null;

            }


        }

        public static void cerrarConexion()
        {

            if (objConexion != null) {
                objConexion.Close();
            }





        }
    }
}