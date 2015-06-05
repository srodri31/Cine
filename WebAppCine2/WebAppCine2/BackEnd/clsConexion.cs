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
using MySql.Data.MySqlClient; // sirve para utilizar mysql

namespace WebAppCine2.BackEnd
{
    public class clsConexion
    {
        public  static string Obtenerconexion() //creamos el metodo para conectarnos con la base de datos
        {
            try //sirve para proteger el codigo de errores
            {
                //sirve para crear parametros de conexion
                string Cadenadeconexion = "server=localhost;Port=3306;User Id=root;database=db_cine_practica";
                MySqlConnection Objconexion = new MySqlConnection(Cadenadeconexion); //creando el objeto para conectar
                return Objconexion.ConnectionString; //retornando al objeto de conexion para conectarnos a la base de datos
            }
            catch (Exception e) //sirve para capturar el error
            {
                throw new Exception("se genero error al conectar con la base de datos " + e.Message); //muestra el error al usuario
            }
        }
        }
}
