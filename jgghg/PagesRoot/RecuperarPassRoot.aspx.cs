using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Net.Mail;

namespace jgghg.PagesRoot
{
    public partial class RecuperarPassRoot : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      
       
        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataTable tb = dv.ToTable();


            
                if (tb.Rows.Count !=0 )
                {
                    for (int i = 0; i < tb.Rows.Count; i++)
                    {
                        if (tb.Rows[i][0].ToString().Trim().FirstOrDefault()!=0)
                        {
                            MailMessage Correo = new MailMessage();
                            Correo.From = new MailAddress("minimarketv2@gmail.com");
                            Correo.To.Add(tb.Rows[i][0].ToString().Trim());
                            Correo.Subject = ("Recuperar Contrasena");
                            Correo.Body = "Recuperacion de contraseña Esta es Su Contraseña: "+tb.Rows[i][1];
                            Correo.Priority = MailPriority.Normal;

                            SmtpClient server = new SmtpClient();
                            server.Credentials = new NetworkCredential("minimarketv2@gmail.com", "123456789MINIMARKET");
                            server.Host = "smtp.gmail.com";
                            server.Port = 587;
                            server.EnableSsl = true;
                            try
                            {
                                server.Send(Correo);
                            }
                            catch (Exception)
                            {

                               
                            }
                            Correo.Dispose();

                        txtEnviada.Text = "Contraseña Restablecida Por favor Revisar Su correo";
                        
                    }
                        else
                        {
                            Response.Write("<script>alert('Nada');</script>");
                            
                        }
                    }
                }
            else
            {
                Response.Write("<script>alert('No hay resultados');</script>");
            }
            }
            

                

            
        }
    }
