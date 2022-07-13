using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetstarsPtc
{
    public partial class MenuSerieA : System.Web.UI.Page
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
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }


        

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ApuestaSerieA1.aspx");
        }

        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ApuestaSerieA2.aspx");
        }
    }
}