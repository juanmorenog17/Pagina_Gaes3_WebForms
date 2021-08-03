using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationGAES3
{
    public partial class WebForm : System.Web.UI.Page
    {

        private static UsercontactoDao enviarusercontactoDao;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string nom = nombre.Text; //Asignar el valor de nombre a "mostrar"
            string tel = telefono.Text;
            string noid = id.Text;
            string correoe = correo.Text;
            string nomciudad = ciudad.Text;
            string txtsituacion = situacion.Text;

            Usercontacto usercontacto = new Usercontacto(nom, tel, noid, correoe, nomciudad, txtsituacion); //Aqui le paso los parametros

            enviarusercontactoDao = UsercontactoDao.getInstance();

            enviarusercontactoDao.save(usercontacto);

            Response.Write($"<script> alert('¡Listo {nom}! Tu información ha sido enviada.') </script>"); //Se ejecuta cuando oprimo el boton de enviar
        }
    }
}