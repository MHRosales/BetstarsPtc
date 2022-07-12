using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetstarsPtc
{
    public partial class CrudMisApuestasMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CrudMisApuestas.aspx");
           
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CrudMisApuestas1.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CrudMisApuestas2.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CrudMisApuestas3.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CrudMisApuestas4.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CrudMisApuestas5.aspx");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CrudMisApuestas6.aspx");
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CrudMisApuestas7.aspx");
        }
    }
}