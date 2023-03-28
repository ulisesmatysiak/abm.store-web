using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace presentacion
{
    public partial class Detalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Articulo articulo = new Articulo();
            List<Articulo> lista = new List<Articulo>();
            ArticuloNegocio negocio = new ArticuloNegocio();

            negocio.listarConSP();
            articulo = lista[0];
        }
    }
}

