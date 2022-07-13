using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.IO;

namespace BetstarsPtc
{
    public partial class CrudUsuarios : System.Web.UI.Page
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

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string ID = TextBox1.Text;
            if (ID != "")
            {
                int Id = Convert.ToInt32(TextBox1.Text.Trim());
                MySqlConnection connexion2 = new MySqlConnection("server=127.0.0.1; database=rosalesproyecto; Uid=root; pwd=info2022;");
                var cmd0 = "SELECT Nombre from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd1 = "SELECT Apellido from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd2 = "SELECT Nombre_Usuario from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd3 = "SELECT Password from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd4 = "SELECT Correo from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd5 = "SELECT Tarjeta from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd6 = "SELECT CVV from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd7 = "SELECT Fecha_Caducidad from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd8 = "SELECT Fecha_Nacimiento from usuarios WHERE Id_Usuario='" + Id + "'";
                //var cmd2 = "SELECT imagen from prueba WHERE Id='" + Id + "'";

                MySqlCommand obtenernombre = new MySqlCommand(cmd0, connexion2);
                obtenernombre.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerapellido = new MySqlCommand(cmd1, connexion2);
                obtenerapellido.Parameters.Add("0@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerusuario = new MySqlCommand(cmd2, connexion2);
                obtenerusuario.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenercontra = new MySqlCommand(cmd3, connexion2);
                obtenercontra.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenercorreo = new MySqlCommand(cmd4, connexion2);
                obtenercorreo.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenertarjeta = new MySqlCommand(cmd5, connexion2);
                obtenertarjeta.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerCVV = new MySqlCommand(cmd6, connexion2);
                obtenerCVV.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerfecha1 = new MySqlCommand(cmd7, connexion2);
                obtenerfecha1.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerfecha2 = new MySqlCommand(cmd8, connexion2);
                obtenerfecha2.Parameters.Add("@Name", MySqlDbType.VarChar);

                //MySqlCommand obtenerimagen = new MySqlCommand(cmd1, connexion2);
                //obtenerimagen.Parameters.Add("@Name", MySqlDbType.VarChar);

                connexion2.Open();

                string nombre = (string)obtenernombre.ExecuteScalar();
                TextBox2.Text = nombre;

                string apellido = (string)obtenerapellido.ExecuteScalar();
                TextBox3.Text = apellido;

                string usuario = (string)obtenerusuario.ExecuteScalar();
                TextBox4.Text = usuario;

                string contra = (string)obtenercontra.ExecuteScalar();
                TextBox5.Text = contra;

                string correo = (string)obtenercorreo.ExecuteScalar();
                TextBox6.Text = correo;

                string tarjeta = (string)obtenertarjeta.ExecuteScalar();
                TextBox7.Text = tarjeta;

                string CVV = (string)obtenerCVV.ExecuteScalar();
                TextBox8.Text = CVV;

                string fecha1 = (string)obtenerfecha1.ExecuteScalar();
                TextBox9.Text = fecha1;

                string fecha2 = (string)obtenerfecha2.ExecuteScalar();
                TextBox10.Text = fecha2;
            }
            else
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal', 'Su usuario o contraseña no son correctos', 'error') </script>";

            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
             string ID = TextBox1.Text;
            if (ID != "")
            {
                int Id = Convert.ToInt32(TextBox1.Text.Trim());
                MySqlConnection connexion2 = new MySqlConnection("server=127.0.0.1; database=rosalesproyecto; Uid=root; pwd=info2022;");
                var cmd0 = "SELECT Nombre from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd1 = "SELECT Apellido from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd2 = "SELECT Nombre_Usuario from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd3 = "SELECT Password from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd4 = "SELECT Correo from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd5 = "SELECT Tarjeta from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd6 = "SELECT CVV from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd7 = "SELECT Fecha_Caducidad from usuarios WHERE Id_Usuario='" + Id + "'";
                var cmd8 = "SELECT Fecha_Nacimiento from usuarios WHERE Id_Usuario='" + Id + "'";
                //var cmd2 = "SELECT imagen from prueba WHERE Id='" + Id + "'";

                MySqlCommand obtenernombre = new MySqlCommand(cmd0, connexion2);
                obtenernombre.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerapellido = new MySqlCommand(cmd1, connexion2);
                obtenerapellido.Parameters.Add("0@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerusuario = new MySqlCommand(cmd2, connexion2);
                obtenerusuario.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenercontra = new MySqlCommand(cmd3, connexion2);
                obtenercontra.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenercorreo = new MySqlCommand(cmd4, connexion2);
                obtenercorreo.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenertarjeta = new MySqlCommand(cmd5, connexion2);
                obtenertarjeta.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerCVV = new MySqlCommand(cmd6, connexion2);
                obtenerCVV.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerfecha1 = new MySqlCommand(cmd7, connexion2);
                obtenerfecha1.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerfecha2 = new MySqlCommand(cmd8, connexion2);
                obtenerfecha2.Parameters.Add("@Name", MySqlDbType.VarChar);

                //MySqlCommand obtenerimagen = new MySqlCommand(cmd1, connexion2);
                //obtenerimagen.Parameters.Add("@Name", MySqlDbType.VarChar);

                connexion2.Open();

                string nombre = (string)obtenernombre.ExecuteScalar();
                TextBox2.Text = nombre;

                string apellido = (string)obtenerapellido.ExecuteScalar();
                TextBox3.Text = apellido;

                string usuario = (string)obtenerusuario.ExecuteScalar();
                TextBox4.Text = usuario;

                string contra = (string)obtenercontra.ExecuteScalar();
                TextBox5.Text = contra;

                string correo = (string)obtenercorreo.ExecuteScalar();
                TextBox6.Text = correo;

                string tarjeta = (string)obtenertarjeta.ExecuteScalar();
                TextBox7.Text = tarjeta;

                string CVV = (string)obtenerCVV.ExecuteScalar();
                TextBox8.Text = CVV;

                string fecha1 = (string)obtenerfecha1.ExecuteScalar();
                TextBox9.Text = fecha1;

                string fecha2 = (string)obtenerfecha2.ExecuteScalar();
                TextBox10.Text = fecha2;
            }
            else
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal', 'Ingresa un ID válido', 'error') </script>";

            }
            
            int id;
            var isNumber = int.TryParse(ID.Trim(), out id);
            if (isNumber)
            {
                int eliminado = conexiones.EliminarUsuario(id);
                if (eliminado == 1)
                {
                    alerta.Text = "<script>Swal.fire('Se elimino correctamente su registro', '¡Gracias por preferirnos Administrador!', 'success'); </script>";
                }
            }
            else
                alerta.Text = "<script>Swal.fire('Algo salio mal', 'Revise sus datos', 'error') </script>";


        }
        public static int EliminarUsuario(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM usuarios WHERE Id_Usuario = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }
    }
}