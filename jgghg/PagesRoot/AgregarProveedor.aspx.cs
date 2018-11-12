using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace jgghg.PagesRoot
{
    public partial class AgregarProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["aux"] == null)
                {
                    Response.Redirect("../Acceder.aspx");

                }
            }
            catch (Exception)
            {

                Response.Write("<script>alert('Inicie Sesion Para Acceder ');</script>");
            
            }
            
        }

        SqlConnection con = new SqlConnection("Data Source = sql7004.site4now.net; Initial Catalog = DB_A41A57_HenrySD; User ID = DB_A41A57_HenrySD_admin; Password=123456789LOPEZ");
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string query = "insert into Proveedores(ProveedorID,Departamento,Ciudad,CodigoPostal,Telefono,Cell,Empresa,Compania)values('" + txtProveedorID.Text + "','" + txtDepa.Text + "','" + txtCiudad.Text + "','" + txtCodigoPostal.Text + "','" + txtTelefono.Text + "','" + txtCell.Text + "','" + txtEmpresa.Text + "','" + txtCompania.Text + "')";
                SqlDataAdapter SDA = new SqlDataAdapter(query, con);
                SDA.SelectCommand.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Datos ingresados exitosamente');</script>");
            }
            catch (Exception )
            {
               
                Response.Write("<script>alert('Problemas con el Servidor');</script>");

            }
            

        }
    }
}