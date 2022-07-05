using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetstarsPtc
{
    public partial class _1_Login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string n = TxtContra.Text;
            string m = TxtUsuario.Text;
            if (TxtContra.Text == "Info2022" && TxtUsuario.Text == "Primero")
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal', 'Su usuario o contraseña no son correctos', 'error') </script>";
                TxtContra.Text = "";
                TxtUsuario.Text = "";
            }
        }
    }
}