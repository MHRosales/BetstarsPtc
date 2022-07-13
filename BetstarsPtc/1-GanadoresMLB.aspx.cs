using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetstarsPtc
{
    public partial class _1_GanadoresMLB : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ganador = DropDownList1.SelectedValue.ToString();
            TextBox4.Text = ganador;
            string puntos1 = DropDownList2.SelectedValue.ToString();
            TextBox1.Text = puntos1;
            string puntos2 = DropDownList3.SelectedValue.ToString();
            TextBox2.Text = puntos2;
            alerta.Text = "<script>Swal.fire('Verify your data at the bottom', 'Thanks for choosing us!', 'success'); </script>";
        }
        protected void cargarMenu()
        {
            //string[] datos = conexiones.ObtenerImagenes();
            //IndicatorsLiteral.Text = datos[1];
            //ImagesLiteral.Text = datos[0];
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TxtContra.Text == "Info2022" && TxtUsuario.Text == "Primero")
            {
                Session["usermane"] = TxtUsuario;
                string Ganador;
                string Puntos1;
                string Puntos2;



                Ganador = TextBox4.Text;
                Puntos1 = TextBox1.Text;
                Puntos2 = TextBox2.Text;


                if (conexiones.MlbRepetidos(Ganador, Puntos1, Puntos2) == 0)
                {


                    TextBox4.Text = "";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TxtContra.Text = "";
                    TxtUsuario.Text = "";
                    alerta.Text = "<script>Swal.fire('Your bet has been saved', 'Thanks for choosing us!', 'success'); </script>";

                }

            }
            else
            {
                alerta.Text = "<script>Swal.fire('There is something wrong', 'Your username or password is not correct', 'error') </script>";
                TxtContra.Text = "";
                TxtUsuario.Text = "";
            }
        }
}
}