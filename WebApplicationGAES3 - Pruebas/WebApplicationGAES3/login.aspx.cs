using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationGAES3.datalogin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlconectar = new SqlConnection(conectar);
            //Llamando al SP
            SqlCommand cmd = new SqlCommand("SP_ValidarUsuario", sqlconectar)
            {
                //Especificamos que es un SP
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            //Asignando los campos correspondientes
            cmd.Parameters.Add("@user", SqlDbType.VarChar, 100).Value = tbUsuario.Text;
            cmd.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = tbPassword.Text;

            //Lector de datos de SQL
            SqlDataReader dr = cmd.ExecuteReader();

            //Validacion
            if (dr.Read())
            {
                //Si recibe parametros CORRECTOS me lleva a una sesión de usuario
                Response.Redirect("/Index.html");
            }
            cmd.Connection.Close();

        }

    }
}