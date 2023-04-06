using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace presentacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            User user = new User();
            UserNegocio negocio = new UserNegocio();

            try
            {
                user.Email = txtEmail.Text;
                user.Pass = txtPass.Text;
                if (negocio.Login(user))
                {
                    Session.Add("user", user);
                    Response.Redirect("MiPerfil.aspx", false);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}