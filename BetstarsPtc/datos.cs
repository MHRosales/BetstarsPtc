﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace BetstarsPtc
{
    public class datos
    {
        public static MySqlConnection ObtenerConexion()
        {
            MySqlConnection datos = new MySqlConnection("server=127.0.0.1; database=rosalesproyecto; Uid=root; pwd=info2022;");
            datos.Open();
            return datos;
        }
    }
}