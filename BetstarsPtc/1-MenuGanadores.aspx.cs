using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetstarsPtc
{
    public partial class _1_MenuGanadores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String nombre = Session["usermane"].ToString();

            }
            catch (Exception ex)
            {
                Response.Redirect("1-Login.aspx");
            }
            cargarMenu();
        }
        protected void cargarMenu()
        {
            //string[] datos = conexiones.ObtenerImagenes();
            //IndicatorsLiteral.Text = datos[1];
            //ImagesLiteral.Text = datos[0];
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("1-GanadoresMundial.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("1-GanadoresNba.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("1-GanadoresNfl.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("1-GanadoresUEFA.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("1-GanadoresSerieA.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("1-GanadoresLaliga.aspx");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("1-GanadoresMLB.aspx");
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("1-GanadoresPremier.aspx");
        }
    }
}