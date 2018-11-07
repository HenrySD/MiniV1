using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using APP_MiniMarket;

namespace APP_MiniMarket
{
    public class Conexion
    {
        private SqlConnection conn;
        private SqlCommand cmd;
        private String myConnectionString;

        public Conexion() {
            myConnectionString = this.cadenaConexion();
            cmd = new SqlCommand();
        }

        /*public static String cadenaConexion() {
            return ConfigurationManager.ConnectionStrings["myConnectionString2"].ToString();
        }*/

        public String cadenaConexion()
        {
            //if (HttpContext.Current.Session["ID_Conexion"]== null)
            //{
                return ConfigurationManager.ConnectionStrings["myConnectionString"].ToString();
            //}
            //else
            //{
                //return ConfigurationManager.ConnectionStrings[HttpContext.Current.Session["ID_Conexion"].ToString()].ToString();
            //}
        }

        public static String cadenaCon()
        {
            if (HttpContext.Current.Session["ID_Conexion"] == null)
            {
                return ConfigurationManager.ConnectionStrings["myConnectionString"].ToString();
            }
            else
            {
                return ConfigurationManager.ConnectionStrings[HttpContext.Current.Session["ID_Conexion"].ToString()].ToString();
            }
        }


        /// <summary>
        /// Permite agregar parametros al MySqlCommand
        /// </summary>
        /// <param name="parameterName">Nombre del parametro.</param>
        /// <param name="value">Valor a ingresar.</param>
        public void agregar(String parameterName, object value) {
            cmd.Parameters.AddWithValue(parameterName, value);
        }


        // Ejecuta operaciones como: Insert, Update, Delete
        public bool ejecutar(String sql)
        {

            try
            {
                conn = new SqlConnection(myConnectionString);
                conn.Open();

                // No descomentar porque se pierde el objeto parametros
                //cmd = new MySqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = sql;
                

                if (cmd.ExecuteNonQuery() != 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (SqlException ex)
            {
                //Global.ultimoErrorDB = ex.Number;
                //Global.msjErrorDB = ex.Message.ToString();

                //if (ex.Number != (int)Global.DBError.existePK && ex.Number != (int)Global.DBError.dependenciaFK)
                //{
                //    String exError = "Error: " + ex.Number + " : " + ex.Message;

                //    //Global.bitacora("BD", exError);
                //    //Global.mensajeError(exError, "Error de conexión");
                //}
                return false;
            }
            finally
            {
                cmd = new SqlCommand();
                conn.Close();
            }
        }
        // Fin de metodo ejecutar


        // Metodo para consultar mediante Select
        public SqlDataReader consultar(String sql)
        {
            SqlDataReader datos = null;

            try
            {
                conn = new SqlConnection(myConnectionString);

                conn.Open();

                cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = sql;

                datos = cmd.ExecuteReader();
                return datos;

            }
            catch (SqlException ex)
            {
                //Global.ultimoErrorDB = ex.Number;
                //Global.msjErrorDB = ex.Message.ToString();

                String exError = "Error: " + ex.Number + " : " + ex.Message;

                //Global.bitacora("BD", exError);
                //Global.mensajeError(exError, "Error de conexión");

                return datos;
            }

        }// Fin de metodo consultar


        // Metodo para consultar mediante Select
        public SqlDataReader consultarConParametros(String sql)
        {
            SqlDataReader datos = null;

            try
            {
                conn = new SqlConnection(myConnectionString);

                conn.Open();             

                cmd.Connection = conn;
                cmd.CommandText = sql;

                datos = cmd.ExecuteReader();
                return datos;

            }
            catch (SqlException ex)
            {
                //Global.ultimoErrorDB = ex.Number;
                //Global.msjErrorDB = ex.Message.ToString();

                String exError = "Error: " + ex.Number + " : " + ex.Message;

                //Global.bitacora("BD", exError);
                //Global.mensajeError(exError, "Error de conexión");

                return datos;
            }
            finally {
                cmd = new SqlCommand();
            }
        }// Fin de metodo consultar


        // Sirve para cerrar la conexion una vez leido los datos de donde se hizo la llamada al lector
        public void cerrarConexion()
        {
            conn.Close();
        }// Fin de cerrar conexion


        /// <summary>
        /// Busca un elemento en la tabla y campo especificado.
        /// </summary>
        /// <param name="tabla">Nombre de la tabla donde se realizará la busqueda</param>
        /// <param name="campo">Nombre del campo donde se realizará la busqueda</param>
        /// <param name="buscar">Valor que se buscará</param>
        /// <returns>Devuelve la cantidad de veces que fue encontrada.</returns>
        /// 
        public int buscarPorCampo(String tabla, String campo, String buscar)
        {

            try
            {
                String sql = "SELECT " + campo + " FROM " + tabla + " WHERE " + campo + " = @buscar";

                this.agregar("buscar", buscar);

                SqlDataReader b;
                           
                b = this.consultarConParametros(sql);

                if (b != null)
                {
                    int t = 0;

                    while (b.Read())
                    {
                        t++;
                    }

                    if (t != 0)
                    {
                        return t;
                    }
                    else
                    {
                        return t;
                    }
                }
                else
                {
                    return -1;
                }

            }
            catch (SqlException ex)
            {
                //Global.ultimoErrorDB = ex.Number;
                //Global.msjErrorDB = ex.Message.ToString();

                String exError = "Error: " + ex.Number + " : " + ex.Message;

                //Global.bitacora("BD", exError);
                //Global.mensajeError(exError, "Error de conexión");

                return -1;
            }
            finally
            {
                cmd = new SqlCommand();
                conn.Close();
            }
        }// Fin de metodo buscar por campo



        /// <summary>
        /// Busca un elemento en la tabla y campo especificado.
        /// </summary>
        /// <param name="tabla">Nombre de la tabla donde se realizará la busqueda</param>
        /// <param name="campo">Nombre del campo donde se realizará la busqueda</param>
        /// <param name="buscar">Valor que se buscará</param>
        /// <param name="extra">Permite agregar una sentencia sql extra al buscar, nota: no utilizar para campos que son ingresados por el usuario</param>
        /// <returns>Devuelve la cantidad de veces que fue encontrada.</returns>
        /// 
        public int buscarPorCampoExtra(String tabla, String campo, String buscar, String extra)
        {

            try
            {
                String sql = "SELECT " + campo + " FROM " + tabla + " WHERE " + campo + " = @buscar " + extra;

                this.agregar("buscar", buscar);

                SqlDataReader b;

                b = this.consultarConParametros(sql);

                if (b != null)
                {
                    int t = 0;

                    while (b.Read())
                    {
                        t++;
                    }

                    if (t != 0)
                    {
                        return t;
                    }
                    else
                    {
                        return t;
                    }
                }
                else
                {
                    return -1;
                }

            }
            catch (SqlException ex)
            {
                //Global.ultimoErrorDB = ex.Number;
                //Global.msjErrorDB = ex.Message.ToString();

                String exError = "Error: " + ex.Number + " : " + ex.Message;

                //Global.bitacora("BD", exError);
                //Global.mensajeError(exError, "Error de conexión");

                return -1;
            }
            finally
            {
                cmd = new SqlCommand();
                conn.Close();
            }
        }// Fin de metodo buscar por campo



        /// <summary>
        /// Busca un elemento en la tabla y campo especificado.
        /// </summary>
        /// <param name="tabla">Nombre de la tabla donde se realizará la busqueda</param>
        /// <param name="campo">Nombre del campo donde se realizará la busqueda</param>
        /// <param name="buscar">Valor que se buscará</param>
        /// <param name="sqlExtra">Valor que se buscará</param>
        /// <returns>Devuelve la cantidad de veces que fue encontrada.</returns>
        /// 
        public int buscarPorCampo(String tabla, String campo, String buscar, String sqlExtra)
        {

            try
            {
                String sql = "SELECT " + campo;
                sql += " FROM ";
                sql += tabla;
                sql += " where " + campo + " = ";
                sql += "'" + buscar + "' " + sqlExtra;
                SqlDataReader b;

                b = this.consultar(sql);

                if (b != null)
                {
                    int t = 0;

                    while (b.Read())
                    {
                        t++;
                    }

                    if (t != 0)
                    {
                        return t;
                    }
                    else
                    {
                        return t;
                    }
                }
                else
                {
                    return -1;
                }

            }
            catch (SqlException ex)
            {
                //Global.ultimoErrorDB = ex.Number;
                //Global.msjErrorDB = ex.Message.ToString();

                String exError = "Error: " + ex.Number + " : " + ex.Message;

                //Global.bitacora("BD", exError);
                //Global.mensajeError(exError, "Error de conexión");

                return -1;
            }
            finally
            {
                conn.Close();
            }
        }// Fin de metodo buscar por campo



        public String buscarID(String tabla, String campo, String buscar, String devolver)
        {
            String retornar = "";
            try
            {
                String sql = "SELECT " + devolver + " FROM " + tabla + " WHERE " + campo + " = @buscar";

                this.agregar("buscar", buscar);

                SqlDataReader b;

                b = this.consultarConParametros(sql);

                if (b != null)
                {
                    while (b.Read())
                    {
                        retornar = b.GetInt64(0).ToString();
                    }


                        return retornar;
                }
                else
                {
                    return retornar;
                }

            }
            catch (SqlException ex)
            {
                //Global.ultimoErrorDB = ex.Number;
                //Global.msjErrorDB = ex.Message.ToString();

                String exError = "Error: " + ex.Number + " : " + ex.Message;

                //Global.bitacora("BD", exError);
                //Global.mensajeError(exError, "Error de conexión");

                return retornar;
            }
            finally
            {
                cmd = new SqlCommand();
                conn.Close();
            }
        }

    }// Fin de la clase
}// Fin del namespace