﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;


namespace presentacion
{
    public partial class Listado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Seguridad.esAdmin(Session["user"]))
            {
                Session.Add("error", "Se requiere permiso de admin para esta pantalla");
                Response.Redirect("Error.aspx");
            }

            ArticuloNegocio negocio = new ArticuloNegocio();
            dgvArticulos.DataSource = negocio.listar();
            dgvArticulos.DataBind();
        }

        protected void dgvArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Id = dgvArticulos.SelectedDataKey.Value.ToString();
            Response.Redirect("AltaBajaModificar.aspx?id=" + Id);
        }
    }
}