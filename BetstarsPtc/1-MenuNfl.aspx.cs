﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetstarsPtc
{
    public partial class _1_MenuNfl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("1-ApuestaNfl1.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("1-ApuestaNfl2.aspx");
        }
    }
}