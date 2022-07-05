using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace BetstarsPtc
{
    public partial class GanadoresMundial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuGanadores.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                string ganador = DropDownList1.SelectedValue.ToString();
                TextBox4.Text = ganador;
                string puntos1 = DropDownList2.SelectedValue.ToString();
                TextBox1.Text = puntos1;
                string puntos2 = DropDownList3.SelectedValue.ToString();
                TextBox2.Text = puntos2;
 
                alerta.Text = "<script>Swal.fire('Berifica sus datos', 'Administrador', 'success'); </script>";

            
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
                    

                    if (conexiones.MundialRepetidos(Ganador, Puntos1, Puntos2) == 0)
                    {


                        TextBox4.Text = "";
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TxtContra.Text = "";
                        TxtUsuario.Text = "";
                    alerta.Text = "<script>Swal.fire('Apuesta Guardada', '¡Gracias por preferirnos!', 'success'); </script>";

                    }

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
    
