using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MySql.Data.MySqlClient;

namespace WebAppCine2.BackEnd
{
    public class clsUsuario
    {
        private int codusuario;
        private string nombre;
        private string password;
        private string correoelectronico;
        private string perfil;

        public int _codusuario
        {
            set { codusuario = value; }
            get { return codusuario; }
        }
        public string _nombre
        {
            set { nombre = value; }
            get { return nombre; }
        }
        public string _password
        {
            set { password = value; }
            get { return password; }
        }
        public string _correoelectronico
        {
            set { correoelectronico = value; }
            get { return correoelectronico; }
        }
        public string _perfil
        {
            set { perfil = value; }
            get { return perfil; }
        }

        public string validar()
        {
            //creamos objeto mysqlconecction 
            MySqlConnection conn = new MySqlConnection(clsConexion.Obtenerconexion());
            //creamos un comando para almacenar el procedimiento almacenado
            MySqlCommand cmd = new MySqlCommand("SP_Validar_Usuario",conn);
            try
            {
                //le damos un tipo al comando
                cmd.CommandType = CommandType.StoredProcedure;
                //creamos los parametros
                MySqlParameter Pusuario = new MySqlParameter("usuario",MySqlDbType.VarChar);
                //asignamos el valor al parametro
                Pusuario.Value = nombre;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pusuario);
                //creamos los parametros
                MySqlParameter Ppassword = new MySqlParameter("password",MySqlDbType.VarChar);
                //asignamos el valor al parametro
                Ppassword.Value = password;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Ppassword);
                //abrimos la conexion
                cmd.Connection.Open();
                //ejecutamos el procedimiento almacenado
                perfil = Convert.ToString(cmd.ExecuteScalar());
                return perfil;
            }
            //capturar el error
            catch (Exception e) 
            {
                //muestra el error al usuario
                throw new Exception ("Hubo un error al ejecutar el procedimiento almacenado SP_Validar_Usuario " + e.Message);
            }
            finally
            {
                //cierro la conexion
                cmd.Connection.Close();
            }
        }
    }
}
