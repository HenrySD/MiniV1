﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jgghg.Pages
{
    public partial class RootHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {/// vereficar existencia de variable de session 
            if (Session["aux"] == null)
            {
                Response.Redirect("../Acceder.aspx");
                
            }
            
        }
    }
}