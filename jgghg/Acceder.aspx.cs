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
        {

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
                            Session["Usuario"] = txtUsuario.Text;
                            Response.Redirect("Pages/AdministradorHome.aspx");
                        }
                        else if (dt.Rows[i][2].ToString() == "2")
                        {
                            Response.Redirect("PagesGerente/HomeGerente.aspx");

                        }
                        else if (dt.Rows[i][2].ToString() == "3")
                        {

                        }
                    }


                }
            }
            else {

                Response.Write("<script>alert('Hello!I am an alert box!!');</script>");


            }

        }

}
}