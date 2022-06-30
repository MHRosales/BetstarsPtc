using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetstarsPtc
{
    public partial class ApuestaMundial1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("MundialMenu.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ganador = DropDownList1.SelectedValue.ToString();
            TxtContra.Text = ganador;
            string puntos1 = DropDownList2.SelectedValue.ToString();
            TextBox1.Text = puntos1;
            string puntos2 = DropDownList3.SelectedValue.ToString();
            TextBox2.Text = puntos2;
            string puntos3 = DropDownList4.SelectedValue.ToString();
            TextBox3.Text = puntos3;
            alerta.Text = "<script>Swal.fire('Buena suerte', '¡Gracias por preferirnos!', 'success'); </script>";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox4 == null && TextBox5 == null)
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
            }
            else
            {
                alerta.Text = "<script>Swal.fire('Apuesta Guardada', '¡Gracias por preferirnos!', 'success'); </script>";
            }
        }
    }
}