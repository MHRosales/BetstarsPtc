using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetstarsPtc
{
    public partial class MundialMenu : System.Web.UI.Page
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ApuestaMundial1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/ApuestaMundial1.aspx");

        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/ApuestaMundial2.aspx");

        }
    }
}