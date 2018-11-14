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
        protected void DetalleCompra_Click(object sender, EventArgs e)
        {
            try
            {
                c.Open();

                string consul = ("insert into Compras(Nombre_Producto,PrecioUnit,Fecha_Compra,Cantidad,Descuento,FacturaID,Total,ProveedorID)values('" + TextNombrePorduc.Text + "','" + TextProcioUnit.Text + "','" + TextDateCompra.Text + "','" + TextCantidad.Text + "','" + txtDescuento.Text + "','" + txtFactura.Text + "','" + txtTotal.Text + "','" + DropDownList1.Text + "')");

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

        protected void Calcular_Total_Descuento_Click(object sender, EventArgs e)
        {
            double a, b, c, d, f, g;
            b = double.Parse(TextProcioUnit.Text);
            c = double.Parse(TextCantidad.Text);
            d = double.Parse(txtDescuento.Text);

            g = d / 100;
            a = b * c;
            f = a - g;

            txtTotal.Text = Convert.ToString(f);
        }
    }

}