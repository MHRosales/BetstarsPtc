﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetstarsPtc
{
    public partial class GanadoresLaliga : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuGanadores.aspx");
        }
    }
}