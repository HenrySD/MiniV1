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
            if (Session["aux"] == null)
            {
                Response.Redirect("../Acceder.aspx");
                Response.End();
            }
        }
        
      SqlConnection a = new SqlConnection("Data Source = sql7004.site4now.net; Initial Catalog = DB_A41A57_HenrySD; User ID = DB_A41A57_HenrySD_admin; Password=123456789LOPEZ");
        protected void compra_Click(object sender, EventArgs e)
        {
            try
            {
                a.Open();
                string consulCompra = ("insert into Compras(PrecioUnit,Fecha_Compra,Cantidad,ProveedorID)values('" + TextProcioUnit.Text + "','" + TextDateCompra.Text + "','" + TextCantidad.Text + "','" + TextProveedorID.Text + "')");
                SqlDataAdapter SDACompra = new SqlDataAdapter(consulCompra, a);
                SDACompra.SelectCommand.ExecuteNonQuery();
                Response.Write("<script>alert('Compra Guardada');</script>");
                a.Close();
            }
            catch (Exception)
            {

                Response.Write("<script>alert('Por favor Reincie el formulario');</script>");
            }
          
        }

        SqlConnection c = new SqlConnection("Data Source = sql7004.site4now.net; Initial Catalog = DB_A41A57_HenrySD; User ID = DB_A41A57_HenrySD_admin; Password=123456789LOPEZ");
        protected void DetalleCompra_Click(object sender, EventArgs e)
        {
            try
            {
                c.Open();

                string consul = ("insert into DetallesCompras(ProductoID,Descuento,FacturaID,Fecha,Total,CompraID)values('" + txtProductID.Text + "','" + txtDescuento.Text + "','" + txtFactura.Text + "','" + txtFecha.Text + "','" + txtTotal.Text + "','" + txtCompra.Text + "')");



                SqlDataAdapter SDA = new SqlDataAdapter(consul, c);
                SDA.SelectCommand.ExecuteNonQuery();

                Response.Write("<script>alert('Datos guardados Exitosamente');</script>");
                c.Close();
            }
            catch (Exception)
            {

                Response.Write("<script>alert('Por favor Reincie el formulario');</script>");
            }
        }
           
        
    }

}