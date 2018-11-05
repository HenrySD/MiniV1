using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;



namespace jgghg
{
    //Conexion conexion = new Conexion();

    public partial class Acceder : System.Web.UI.Page
    {
        


        protected void Page_Load(object sender, EventArgs e)
        {// x intentos para acceder a la app sin loguearse la variable aux siempre sera null al momento de cargar de nuevo acceder.aspx
            Session["aux"] = null;
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            

           
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataTable dt = dv.ToTable();


            if (dt.Rows.Count != 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i][0].ToString().Trim() == txtUsuario.Text && dt.Rows[i][1].ToString().Trim() == txtContra.Text)
                    {
                        if (dt.Rows[i][2].ToString() == "1")
                        {
                            Session["aux"] = txtUsuario.Text;
                            Response.Redirect("PagesRoot/RootHome.aspx");
                        }
                        else if (dt.Rows[i][2].ToString() == "2")
                        {
                            Session["aux"] = txtUsuario.Text;
                            Response.Redirect("PagesAdmin/AdminHome.aspx");

                        }
                        else if (dt.Rows[i][2].ToString() == "3")
                        {
                            Session["aux"] = txtUsuario.Text;
                        }

                        
                    }
                    else
                    {
                        
            
                            Error.Text = "Ingrese Datos Corectos";
                        // alertas pero salen en 3 veses no funionan con el .trim()
                        //Response.Write("<script>alert('Ingrese otro');</script>");

                        
                    }


                }
            }
            
            
           

        }

}
}