using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetstarsPtc
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("MundialMenu.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuNba.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuNfl.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuUEFA.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuSerieA.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuLaliga.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuMLB.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuPremier.aspx");
        }
    }
}