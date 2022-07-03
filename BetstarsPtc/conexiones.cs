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
        public static int UsuariosRepetidos(string usuario, string contra, string nombre, string apellido, string correo, string tarjeta, string CVV, string Fecha1, string Fecha2)
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
                conexiones.AgregarUsuario(nombre, apellido, usuario, contra, correo, tarjeta , CVV,  Fecha1,  Fecha2);

            }
            conexion.Close();
            return valor;
        }
        //**************************** Método para los usuario ****************************
        public static int AgregarUsuario(string nombre, string apellido, string usuario, string contra, string correo, string tarjeta, string CVV, string Fecha1, string Fecha2)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into usuarios (Nombre, Apellido,Nombre_Usuario, Password,Correo, Tarjeta, CVV, Fecha_Caducidad, Fecha_Nacimiento) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", nombre, apellido, usuario, contra, correo, tarjeta, CVV, Fecha1, Fecha2), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
         
        public static int ApuestasRepetidos(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.AgregarApuesta(Ganador, Puntos1, Puntos2, Apuesta, usuario);
            }
            else
            {
                conexiones.AgregarApuesta(Ganador, Puntos1, Puntos2, Apuesta, usuario);

            }
            conexion.Close();
            return valor;
        }
        //**************************** Método para los usuario ****************************
        public static int AgregarApuesta(string Ganador, string Puntos1, string Puntos2, string Apuesta , string usuario)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into apuesta (Ganador, Puntos_equipo1 ,Puntos_equipo2, Apuesta,Usuario) values ('{0}','{1}','{2}','{3}','{4}')", Ganador, Puntos1, Puntos2, Apuesta, usuario), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
    }
}