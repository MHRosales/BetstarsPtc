using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetstarsPtc
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String nombre = Session["usermane"].ToString();

            }
            catch (Exception ex)
            {
                Response.Redirect("Login.aspx");
            }
            cargarMenu();
        }
        protected void cargarMenu()
        {
            //string[] datos = conexiones.ObtenerImagenes();
            //IndicatorsLiteral.Text = datos[1];
            //ImagesLiteral.Text = datos[0];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuGanadores.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrudGanadores.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrudUsuarios.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrudMisApuestas.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MenuGanadores.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CrudGanadores.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CrudUsuarios.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CrudMisApuestas.aspx");
        }
    }
}