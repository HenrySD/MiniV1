using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jgghg.PagesRoot
{
    public partial class AgregarProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aux"] == null)
            {
                Response.Redirect("../Acceder.aspx");

            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

        }
    }
}