using System;
using System.Collections.Generic;
using System.Data.SqlClient; //Libreria para poder usar SqlConnection
using System.Linq;
using System.Web;

namespace WebApplicationGAES3
{
    public class Conexion
    {

        private static Conexion conexion;

        //CONSTRUCTOR PRIVADO
        private Conexion() { }

        //PROCEDIMIENTO PARA ACCEDER AL ATRIBUTO ESTATICO
        public static Conexion getInstance()
        {

            if(conexion == null) //Construir objeto si no existe 
            {
                conexion = new Conexion();
                return conexion;
            }
            else //Retornar objeto existente
            {
                return conexion;
            }


        }


        //PROCEDIMIENTO PARA CONECTARME A LA BASE DE DATOS

        public SqlConnection ConexionDB()
        {
            SqlConnection link = new SqlConnection();
            link.ConnectionString = "Data Source=LAPTOP-10RTFMQS\\JUAN_SQL;Initial Catalog=FASTDISPATCH;Integrated Security=true";
            return link;
        }



    }
}