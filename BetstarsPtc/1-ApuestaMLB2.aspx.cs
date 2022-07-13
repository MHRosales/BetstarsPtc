using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using MySql.Data.MySqlClient;

namespace BetstarsPtc
{
    public partial class _1_ApuestaMLB2 : System.Web.UI.Page
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
            string puntos3 = DropDownList4.SelectedValue.ToString();
            TextBox3.Text = puntos3;
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
            if (TxtContra.Text != "" && TxtUsuario.Text != "")
            {

                string contra, usuario;


                contra = EncryptString(TxtContra.Text, initVector);

                usuario = TxtUsuario.Text;

                datos1.valorGlobal = usuario;


                MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database= rosalesproyecto; Uid=root; pwd=info2022;");
                var cmd = "SELECT Id_Usuario from usuarios WHERE Nombre_Usuario='" + usuario + "' AND Password='" + contra + "';";
                MySqlCommand comando = new MySqlCommand(cmd, conexion);
                conexion.Open();
                int retorno = Convert.ToInt32(comando.ExecuteScalar());
                if (retorno != 0)
                {
                    Session["usermane"] = TxtUsuario;
                    string Ganador;
                    string Puntos1;
                    string Puntos2;
                    string Apuesta;


                    Ganador = TextBox4.Text;
                    Puntos1 = TextBox1.Text;
                    Puntos2 = TextBox2.Text;
                    Apuesta = TextBox3.Text;

                    if (conexiones.MLBRepetidos1(Ganador, Puntos1, Puntos2, Apuesta, usuario) == 0)
                    {


                        TextBox4.Text = "";
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TxtUsuario.Text = "";
                        TxtContra.Text = "";
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
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'Do not leave blank spaces', 'error') </script>";
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