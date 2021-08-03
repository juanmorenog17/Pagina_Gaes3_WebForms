using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplicationGAES3
{
    public class UsercontactoDao
    {

        private static UsercontactoDao userContactoDao;

        private UsercontactoDao() { }

        //obtener la instancia
        public static UsercontactoDao getInstance()
        {

            if (userContactoDao == null)
            {
                userContactoDao = new UsercontactoDao();
                return userContactoDao;
            }
            else
            {
                return userContactoDao;
            }

        }

        //VERIFICAR QUE SE INSERTE EL REGISTRO EN LA DB
        public void save(Usercontacto usercontacto)
        {
            SqlConnection conn = null;
            SqlCommand cmd = null;
            string script = null;


            //USAMOS TRY, CATCH PARA QUE LA APP SIGA FUNCIONANDO SI SUCEDE ALGUN PROBLEMA EN LA DB
            try
            {

                conn = Conexion.getInstance().ConexionDB();
                conn.Open(); //Abrir la conexion a la db
                script = $"INSERT INTO usercontacto (nombre_completo, telefono, num_identificacion, correo_electronico, ciudad, situacion) VALUES ('{usercontacto.Nombre_completo}' , '{usercontacto.Telefono}' , '{usercontacto.Num_identificacion}' , '{usercontacto.Correo_electronico}' , '{usercontacto.Ciudad}' , '{usercontacto.Situacion}');"; //INSERTAR LOS VALORES CORRESPONDIENTES A LOS PROCEDIMIENTOS

                //Ejecutar el comando con la conexion abierta y el script que es el insert
                cmd = new SqlCommand(script, conn);

                //ejecutar la consulta
                cmd.ExecuteNonQuery();

                //Siempre se debe cerra la conexion
                conn.Close();

            }
            catch (Exception ex)
            {
                throw ex; //Si hay algun problema
            }


        }


    }
}