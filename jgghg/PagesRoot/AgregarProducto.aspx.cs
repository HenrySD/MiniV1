using System;
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
                Response.End();
            }
        }
        
        protected void btnAgregar_Click(object sender, EventArgs e)
        {



            string qsk = "insert into Productos(ProductoID,NameProducto,ProveedorID,CategoriaID,PrecioUnit,UnidadesStock)values('" + TextProductoID.Text + "','" + txtNombreProducto.Text + "','" + Proveedortxt.Text + "','" + Categoriatxt.Text + "','" + TextPrecioUnit.Text + "','" + TextPrecioUnit.Text + "',)";


            ex.ejecutar(qsk);
            
            Response.Write("<script>alert('Datos guardados Exitosamente');</script>");
        }
    }
}