using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace BetstarsPtc
{
    public class conexiones
    {
        //**************************** Método para verificar si se repiten los usuario ****************************
        public static int UsuariosRepetidos(string usuario, string contra, string nombre, string apellido, string correo, string tarjeta)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Usuario FROM usuarios WHERE Nombre_Usuario='" + usuario + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {

            }
            else
            {
                conexiones.AgregarUsuario(nombre, apellido, usuario, contra, correo, tarjeta);

            }
            conexion.Close();
            return valor;
        }
        //**************************** Método para los usuario ****************************
        public static int AgregarUsuario(string nombre, string apellido, string usuario, string contra, string correo, string tarjeta)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into usuarios (Nombre, Apellido,Nombre_Usuario, Password,Correo, Tarjeta) values ('{0}','{1}','{2}','{3}','{4}','{5}')", nombre, apellido, usuario, contra, correo, tarjeta), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
    }
}