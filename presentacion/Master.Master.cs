using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace presentacion
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            imgAvatar.ImageUrl = "https://simg.nicepng.com/png/small/202-2022264_usuario-annimo-usuario-annimo-user-icon-png-transparent.png";
            if (!(Page is Login || Page is Registro || Page is Default || Page is Error || Page is Detalle))
            {
                if (!Seguridad.sesionActiva(Session["user"]))
                    Response.Redirect("Login.aspx", false);
                else
                {
                    User usuario = (User)Session["user"];
                    lblUser.Text = usuario.Email;
                    if (!string.IsNullOrEmpty(usuario.UrlImagenPerfil))
                    {
                        imgAvatar.ImageUrl = usuario.UrlImagenPerfil;
                    }
                }
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}