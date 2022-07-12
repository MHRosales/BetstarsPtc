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
    public partial class CrudMisApuestas3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string ID = TextBox1.Text;
            if (ID != "")
            {
                int Id = Convert.ToInt32(TextBox1.Text.Trim());
                MySqlConnection connexion2 = new MySqlConnection("server=127.0.0.1; database=rosalesproyecto; Uid=root; pwd=info2022;");
                var cmd0 = "SELECT Ganador from uefa WHERE id_Apuesta='" + Id + "'";
                var cmd1 = "SELECT Puntos_equipo1 from uefa WHERE id_Apuesta='" + Id + "'";
                var cmd2 = "SELECT Puntos_equipo2 from uefa WHERE id_Apuesta='" + Id + "'";
                var cmd3 = "SELECT Apuesta from uefa WHERE id_Apuesta='" + Id + "'";
                var cmd4 = "SELECT Usuario from uefa WHERE id_Apuesta='" + Id + "'";
                //var cmd2 = "SELECT imagen from prueba WHERE Id='" + Id + "'";

                MySqlCommand obtenerganador = new MySqlCommand(cmd0, connexion2);
                obtenerganador.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerpuntos1 = new MySqlCommand(cmd1, connexion2);
                obtenerpuntos1.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerpuntos2 = new MySqlCommand(cmd2, connexion2);
                obtenerpuntos2.Parameters.Add("@Name", MySqlDbType.VarChar);


                MySqlCommand obtenerapuesta = new MySqlCommand(cmd3, connexion2);
                obtenerapuesta.Parameters.Add("@Name", MySqlDbType.VarChar);

                MySqlCommand obtenerusuario = new MySqlCommand(cmd4, connexion2);
                obtenerusuario.Parameters.Add("@Name", MySqlDbType.VarChar);


                //MySqlCommand obtenerimagen = new MySqlCommand(cmd1, connexion2);
                //obtenerimagen.Parameters.Add("@Name", MySqlDbType.VarChar);

                connexion2.Open();

                string ganador = (string)obtenerganador.ExecuteScalar();
                TextBox2.Text = ganador;

                string puntos1 = (string)obtenerpuntos1.ExecuteScalar();
                TextBox3.Text = puntos1;

                string puntos2 = (string)obtenerpuntos2.ExecuteScalar();
                TextBox4.Text = puntos2;

                string apuesta = (string)obtenerapuesta.ExecuteScalar();
                TextBox5.Text = apuesta;

                string Usuario = (string)obtenerusuario.ExecuteScalar();
                TextBox6.Text = Usuario;
            }
    }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {

            if (TextBox7.Text != "" && TextBox6.Text != "")
            {

                string contra, usuario;


                contra = EncryptString(TextBox7.Text, initVector);

                usuario = TextBox6.Text;

                datos1.valorGlobal = usuario;


                MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database= rosalesproyecto; Uid=root; pwd=info2022;");
                var cmd = "SELECT Id_Usuario from usuarios WHERE Nombre_Usuario='" + usuario + "' AND Password='" + contra + "';";
                MySqlCommand comando = new MySqlCommand(cmd, conexion);
                conexion.Open();
                int retorno = Convert.ToInt32(comando.ExecuteScalar());
                if (retorno != 0)
                {
                    string Ganador, puntos1, puntos2;


                    Ganador = TextBox2.Text;
                    puntos1 = TextBox3.Text;
                    puntos2 = TextBox4.Text;

                    datos1.valorGlobal = usuario;
                    MySqlConnection conexion1 = new MySqlConnection("Server=127.0.0.1; database= rosalesproyecto; Uid=root; pwd=info2022;");
                    var cmd1 = "SELECT id_Apuesta from ganadoruefa WHERE Ganador='" + Ganador + "'AND Puntos_equipo1='" + puntos1 + "' AND Puntos_equipo2='" + puntos2 + "';";
                    MySqlCommand comando1 = new MySqlCommand(cmd1, conexion1);
                    conexion1.Open();
                    int retorno1 = Convert.ToInt32(comando1.ExecuteScalar());
                    if (retorno1 != 0)
                    {
                        alerta.Text = "<script>Swal.fire('Felicidades has ganado', '¡Gracias por preferirnos!', 'success'); </script>";

                    }
                    else
                    {
                        alerta.Text = "<script>Swal.fire('Lo lamentamos perdio', 'Suerte la proxima', 'error') </script>";
                    }

                }
                else
                {
                    alerta.Text = "<script>Swal.fire('Algo salio mal', 'Su usuario o contraseña no son correctos', 'error') </script>";
                    TextBox7.Text = "";
                    TextBox6.Text = "";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
            }
        }


        private const string initVector = "emmanuelinfo2022";
        // This constant is used to determine the keysize of the encryption algorithm
        private const int keysize = 256;
        //Encrypt
        public static string EncryptString(string plainText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream();
            CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
            cryptoStream.FlushFinalBlock();
            byte[] cipherTextBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            return Convert.ToBase64String(cipherTextBytes);
        }
    }
}