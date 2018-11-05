using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace jgghg.Pages
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aux"] == null)
            {
                Response.Redirect("../Acceder.aspx");
                Response.End();
            }
        }

        SqlConnection con = new SqlConnection("Data Source=sql7004.site4now.net;Initial Catalog=DB_A41A57_HenrySD;User ID=DB_A41A57_HenrySD_admin;Password=123456789LOPEZ");

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "insert into Usuarios(UserName,Pass,Nombre,Apellido,Correo,CargoID,Calle,Barrio,Colonia,Pasaje,NumCasa,Municipio,Departamento)values('"+txtUserName.Text+ "','" + txtPassRe.Text + "','" + txtNombre.Text + "','" + txtApellido.Text + "','" + txtCorreo.Text + "','" + txtCargo.Text + "','" + txtCalle.Text + "','" + txtBarrio.Text + "','" + txtColonia.Text + "','" + txtPasaje.Text + "','" + txtNumCasa.Text + "','" +txtMunicipio.Text + "','" + txtDepartamento.Text + "')";
            SqlDataAdapter SDA = new SqlDataAdapter(query,con);
            SDA.SelectCommand.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Datos guardados Exitosamente');</script>");
            
        }
    }
}