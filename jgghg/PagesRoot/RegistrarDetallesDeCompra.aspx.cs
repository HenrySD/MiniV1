using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jgghg.PagesRoot
{
    public partial class RegistrarDetallesDeCompra : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
     

        SqlConnection c = new SqlConnection("Data Source = sql7004.site4now.net; Initial Catalog = DB_A41A57_HenrySD; User ID = DB_A41A57_HenrySD_admin; Password=123456789LOPEZ");

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {

                c.Open();

                string consul ="insert into Comprass(ProductoID,Nombre_Producto,PrecioUnit,Cantidad,Descuento,Total,ProveedorID,DateCompra)values('" + TextIDProducto.Text + "','" + TextNombrePorduc.Text + "','" + TextProcioUnit.Text + "','" + TextCantidad.Text + "','" + txtDescuento.Text + "','" + txtTotal.Text + "','" + DropDownList1.Text + "','" + TextDateCompra.Text + "')";

                SqlDataAdapter SDA = new SqlDataAdapter(consul, c);
                SDA.SelectCommand.ExecuteNonQuery();
                c.Close();
                Response.Write("<script>alert('Datos guardados Exitosamente');</script>");
                
            }
            catch (Exception)
            {

                Response.Write("<script>alert('Por favor Reincie el formulario');</script>");
            }

            

        }
    }

}