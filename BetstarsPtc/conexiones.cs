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
        //*************************  Mundial ****************************
        public static int ApuestasMundial(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.ApuestasMundial1(Ganador, Puntos1, Puntos2, Apuesta, usuario);
            }
            else
            {
                conexiones.ApuestasMundial1(Ganador, Puntos1, Puntos2, Apuesta, usuario);

            }
            conexion.Close();
            return valor;
        }
        //**************************** Método para los usuario ****************************
        public static int ApuestasMundial1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into apuesta (Ganador, Puntos_equipo1 ,Puntos_equipo2, Apuesta,Usuario) values ('{0}','{1}','{2}','{3}','{4}')", Ganador, Puntos1, Puntos2, Apuesta, usuario), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }


        //*************************  Mundial ****************************
        public static int MundialRepetidos(string Ganador, string Puntos1, string Puntos2)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.Mundial(Ganador, Puntos1, Puntos2 );
            }
            else
            {
                conexiones.Mundial(Ganador, Puntos1, Puntos2);

            }
            conexion.Close();
            return valor;
        }
        
        public static int Mundial(string Ganador, string Puntos1, string Puntos2)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into ganadormundial (Ganador, Puntos_equipo1 ,Puntos_equipo2) values ('{0}','{1}','{2}')", Ganador, Puntos1, Puntos2), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //*************************  Nba ****************************
        public static int NbaRepetidos(string Ganador, string Puntos1, string Puntos2)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.Nba(Ganador, Puntos1, Puntos2);
            }
            else
            {
                conexiones.Nba(Ganador, Puntos1, Puntos2);

            }
            conexion.Close();
            return valor;
        }

        public static int Nba(string Ganador, string Puntos1, string Puntos2)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into ganadornba (Ganador, Puntos_equipo1 ,Puntos_equipo2) values ('{0}','{1}','{2}')", Ganador, Puntos1, Puntos2), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  Nfl ****************************
        public static int NflRepetidos(string Ganador, string Puntos1, string Puntos2)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.Nfl(Ganador, Puntos1, Puntos2);
            }
            else
            {
                conexiones.Nfl(Ganador, Puntos1, Puntos2);

            }
            conexion.Close();
            return valor;
        }

        public static int Nfl(string Ganador, string Puntos1, string Puntos2)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into ganadornfl (Ganador, Puntos_equipo1 ,Puntos_equipo2) values ('{0}','{1}','{2}')", Ganador, Puntos1, Puntos2), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  UEFA ****************************
        public static int UEFARepetidos(string Ganador, string Puntos1, string Puntos2)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.UEFA(Ganador, Puntos1, Puntos2);
            }
            else
            {
                conexiones.UEFA(Ganador, Puntos1, Puntos2);

            }
            conexion.Close();
            return valor;
        }

        public static int UEFA(string Ganador, string Puntos1, string Puntos2)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into ganadouefa (Ganador, Puntos_equipo1 ,Puntos_equipo2) values ('{0}','{1}','{2}')", Ganador, Puntos1, Puntos2), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  Serie A ****************************
        public static int SerieARepetidos(string Ganador, string Puntos1, string Puntos2)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.SerieA(Ganador, Puntos1, Puntos2);
            }
            else
            {
                conexiones.SerieA(Ganador, Puntos1, Puntos2);

            }
            conexion.Close();
            return valor;
        }

        public static int SerieA(string Ganador, string Puntos1, string Puntos2)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into ganadorseriea (Ganador, Puntos_equipo1 ,Puntos_equipo2) values ('{0}','{1}','{2}')", Ganador, Puntos1, Puntos2), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  La liga ****************************
        public static int LaligaRepetidos(string Ganador, string Puntos1, string Puntos2)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.Laliga(Ganador, Puntos1, Puntos2);
            }
            else
            {
                conexiones.Laliga(Ganador, Puntos1, Puntos2);

            }
            conexion.Close();
            return valor;
        }

        public static int Laliga(string Ganador, string Puntos1, string Puntos2)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into ganadorlaliga (Ganador, Puntos_equipo1 ,Puntos_equipo2) values ('{0}','{1}','{2}')", Ganador, Puntos1, Puntos2), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  MLB ****************************
        public static int MlbRepetidos(string Ganador, string Puntos1, string Puntos2)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.Mlb(Ganador, Puntos1, Puntos2);
            }
            else
            {
                conexiones.Mlb(Ganador, Puntos1, Puntos2);

            }
            conexion.Close();
            return valor;
        }

        public static int Mlb(string Ganador, string Puntos1, string Puntos2)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into ganadormlb (Ganador, Puntos_equipo1 ,Puntos_equipo2) values ('{0}','{1}','{2}')", Ganador, Puntos1, Puntos2), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  Premier ****************************
        public static int PremierRepetidos(string Ganador, string Puntos1, string Puntos2)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.Premier(Ganador, Puntos1, Puntos2);
            }
            else
            {
                conexiones.Premier(Ganador, Puntos1, Puntos2);

            }
            conexion.Close();
            return valor;
        }

        public static int Premier(string Ganador, string Puntos1, string Puntos2)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into ganadorpremier (Ganador, Puntos_equipo1 ,Puntos_equipo2) values ('{0}','{1}','{2}')", Ganador, Puntos1, Puntos2), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  Mundial ****************************
        public static int MundialRepetidos1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.Mundial1(Ganador, Puntos1, Puntos2, Apuesta, usuario);
            }
            else
            {
                conexiones.Mundial1(Ganador, Puntos1, Puntos2, Apuesta, usuario);

            }
            conexion.Close();
            return valor;
        }

        public static int Mundial1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into mundial (Ganador, Puntos_equipo1 ,Puntos_equipo2, Apuesta,Usuario) values ('{0}','{1}','{2}','{3}','{4}')", Ganador, Puntos1, Puntos2, Apuesta, usuario), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  Nba ****************************
        public static int NbaRepetidos1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.NBA1(Ganador, Puntos1, Puntos2, Apuesta, usuario);
            }
            else
            {
                conexiones.NBA1(Ganador, Puntos1, Puntos2, Apuesta, usuario);

            }
            conexion.Close();
            return valor;
        }

        public static int NBA1 (string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into nba (Ganador, Puntos_equipo1 ,Puntos_equipo2, Apuesta,Usuario) values ('{0}','{1}','{2}','{3}','{4}')", Ganador, Puntos1, Puntos2, Apuesta, usuario), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  Nfl ****************************
        public static int NflRepetidos1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.NFL1(Ganador, Puntos1, Puntos2, Apuesta, usuario);
            }
            else
            {
                conexiones.NFL1(Ganador, Puntos1, Puntos2, Apuesta, usuario);

            }
            conexion.Close();
            return valor;
        }

        public static int NFL1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into nfl (Ganador, Puntos_equipo1 ,Puntos_equipo2, Apuesta,Usuario) values ('{0}','{1}','{2}','{3}','{4}')", Ganador, Puntos1, Puntos2, Apuesta, usuario), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  UEFA ****************************
        public static int UEFARepetidos1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.UEFA1(Ganador, Puntos1, Puntos2, Apuesta, usuario);
            }
            else
            {
                conexiones.UEFA1(Ganador, Puntos1, Puntos2, Apuesta, usuario);

            }
            conexion.Close();
            return valor;
        }

        public static int UEFA1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into uefa (Ganador, Puntos_equipo1 ,Puntos_equipo2, Apuesta,Usuario) values ('{0}','{1}','{2}','{3}','{4}')", Ganador, Puntos1, Puntos2, Apuesta, usuario), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  Serie A ****************************
        public static int SerieARepetidos1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.SerieA1(Ganador, Puntos1, Puntos2, Apuesta, usuario);
            }
            else
            {
                conexiones.SerieA1(Ganador, Puntos1, Puntos2, Apuesta, usuario);

            }
            conexion.Close();
            return valor;
        }

        public static int SerieA1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into seriea (Ganador, Puntos_equipo1 ,Puntos_equipo2, Apuesta,Usuario) values ('{0}','{1}','{2}','{3}','{4}')", Ganador, Puntos1, Puntos2, Apuesta, usuario), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  La Liga ****************************
        public static int LaligaRepetidos1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.Laliga1(Ganador, Puntos1, Puntos2, Apuesta, usuario);
            }
            else
            {
                conexiones.Laliga1(Ganador, Puntos1, Puntos2, Apuesta, usuario);

            }
            conexion.Close();
            return valor;
        }

        public static int Laliga1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into laliga (Ganador, Puntos_equipo1 ,Puntos_equipo2, Apuesta,Usuario) values ('{0}','{1}','{2}','{3}','{4}')", Ganador, Puntos1, Puntos2, Apuesta, usuario), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  MLB ****************************
        public static int MLBRepetidos1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.MLB1(Ganador, Puntos1, Puntos2, Apuesta, usuario);
            }
            else
            {
                conexiones.MLB1(Ganador, Puntos1, Puntos2, Apuesta, usuario);

            }
            conexion.Close();
            return valor;
        }

        public static int MLB1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into mlb (Ganador, Puntos_equipo1 ,Puntos_equipo2, Apuesta,Usuario) values ('{0}','{1}','{2}','{3}','{4}')", Ganador, Puntos1, Puntos2, Apuesta, usuario), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //*************************  Premier ****************************
        public static int PremierRepetidos1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_Apuesta FROM apuesta WHERE Ganador='" + Ganador + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                conexiones.Premier1(Ganador, Puntos1, Puntos2, Apuesta, usuario);
            }
            else
            {
                conexiones.Premier1(Ganador, Puntos1, Puntos2, Apuesta, usuario);

            }
            conexion.Close();
            return valor;
        }

        public static int Premier1(string Ganador, string Puntos1, string Puntos2, string Apuesta, string usuario)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into premier (Ganador, Puntos_equipo1 ,Puntos_equipo2, Apuesta,Usuario) values ('{0}','{1}','{2}','{3}','{4}')", Ganador, Puntos1, Puntos2, Apuesta, usuario), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
    }
}