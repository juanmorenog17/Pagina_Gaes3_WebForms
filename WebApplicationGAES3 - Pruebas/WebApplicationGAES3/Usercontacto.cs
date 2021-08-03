using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplicationGAES3
{
    public class Usercontacto
    {

        private string nombre_completo;
        private string telefono;
        private string num_identificacion;
        private string correo_electronico;
        private string ciudad;
        private string situacion;

        //CONSTRUCTOR VACIO
        public Usercontacto(string nom) { }

        //CONSTRUCTOR CON ARGUMENTOS DE ASIGNACION
        public Usercontacto(string _nombre_completo, string _telefono, string _num_identificacion, string _correo_electronico, string _ciudad, string _situacion)
        {
            this.nombre_completo = _nombre_completo;
            this.telefono = _telefono;
            this.num_identificacion = _num_identificacion;
            this.correo_electronico = _correo_electronico;
            this.ciudad = _ciudad;
            this.situacion = _situacion;
        }



        //FUNCIONES PARA ACCEDER A LOS ATRUBUTOS YA QUE ESTAN COMO PRIVADOS
        public string Nombre_completo
        {
            get { return this.nombre_completo; }
            set { this.nombre_completo = value; }
        }

        public string Telefono
        {
            get { return this.telefono; }
            set { this.telefono = value; }
        }

        public string Num_identificacion
        {
            get { return this.num_identificacion; }
            set { this.num_identificacion = value; }
        }

        public string Correo_electronico
        {
            get { return this.correo_electronico; }
            set { this.correo_electronico = value; }
        }

        public string Ciudad
        {
            get { return this.ciudad; }
            set { this.ciudad = value; }
        }

        public string Situacion
        {
            get { return this.situacion; }
            set { this.situacion = value; }
        }

    }
}