﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace jgghg.Pages
{
    public partial class AgregarProducto : System.Web.UI.Page
    {
        ConexionSD ex = new ConexionSD();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aux"] == null)
            {
                Response.Redirect("../Acceder.aspx");
                
            }
        }
        //1
        SqlConnection con = new SqlConnection("Data Source = sql7004.site4now.net; Initial Catalog = DB_A41A57_HenrySD; User ID = DB_A41A57_HenrySD_admin; Password=123456789LOPEZ");
        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();

                string query = ("insert into Productos(ProductoId,NameProducto,ProveedorID,CategoriaID,PrecioUnit,UnidadesStock)values('" + TextProductoID.Text + "','" + txtNombreProducto.Text + "','" + txtProveedor.Text + "','" + txtCategoria.Text + "','" + TextPrecioUnit.Text + "','" + TextExistencia.Text + "')");

                SqlDataAdapter SDA = new SqlDataAdapter(query, con);
                SDA.SelectCommand.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Datos guardados Exitosamente');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Problemas con la Conexion');</script>");

            }

            
        }
    }
}