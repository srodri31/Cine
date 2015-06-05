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
    public class clscliente
    {
        private int cedula;
        private string nombre;
        private string apellido;
        private string telefono;
        private string celular;
        private string direccion;
        private string sexo;
        private string fechanacimiento;
        private string correoelectronico;
        private string tipo;
        private string usuario;
        private string contraseña;

        //creamos objeto mysqlconecction 
        MySqlConnection conn = new MySqlConnection(clsConexion.Obtenerconexion());

        public int _cedula
        {
            set { cedula = value; }
            get { return cedula; }
        }
        public string _nombre
        {
            set { nombre = value; }
            get { return nombre; }
        }
        public string _apellido
        {
            set { apellido = value; }
            get { return apellido; }
        }
        public string _telefono
        {
            set { telefono = value; }
            get { return telefono; }
        }
        public string _celular
        {
            set { celular = value; }
            get { return celular; }
        }
        public string _direccion
        {
            set { direccion = value; }
            get { return direccion; }
        }
        public string _sexo
        {
            set { sexo = value; }
            get { return sexo; }
        }
        public string _fechanacimiento
        {
            set { fechanacimiento = value; }
            get { return fechanacimiento; }
        }
        public string _correoelectronico
        {
            set { correoelectronico = value; }
            get { return correoelectronico; }
        }
        public string _tipo
        {
            set { tipo = value; }
            get { return tipo; }
        }
        public string _usuario
        {
            set { usuario = value; }
            get { return usuario; }
        }
        public string _contraseña
        {
            set { contraseña = value; }
            get { return contraseña; }
        }
        public string guardar()
        {
            //creamos un comando para almacenar el procedimiento almacenado
            MySqlCommand cmd = new MySqlCommand("SP_Cliente_Guardar", conn);
            try
            {
                //le damos un tipo al comando
                cmd.CommandType = CommandType.StoredProcedure;
                //creamos los parametros
                MySqlParameter PCedula = new MySqlParameter("Cedula", MySqlDbType.VarChar, 10);
                //asignamos el valor al parametro
                PCedula.Value = cedula;
                //agregamos el parametro al comando
                cmd.Parameters.Add(PCedula);
                //creamos los parametros
                MySqlParameter Pnombre = new MySqlParameter("Nombre", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Pnombre.Value = nombre;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pnombre);
                //creamos los parametros
                MySqlParameter Papellido = new MySqlParameter("Apellido", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Papellido.Value = apellido;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Papellido);
                //creamos los parametros
                MySqlParameter Psexo = new MySqlParameter("Sexo", MySqlDbType.VarChar);
                //asignamos el valor al parametro
                Psexo.Value = sexo;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Psexo);
                //creamos los parametros
                MySqlParameter Pfechanacimiento = new MySqlParameter("FechaN", MySqlDbType.VarChar);
                //asignamos el valor al parametro
                Pfechanacimiento.Value = fechanacimiento;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pfechanacimiento);
                //creamos los parametros
                MySqlParameter Ptelefono = new MySqlParameter("Telefono", MySqlDbType.VarChar, 7);
                //asignamos el valor al parametro
                Ptelefono.Value = telefono;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Ptelefono);
                //creamos los parametros
                MySqlParameter Pcelular = new MySqlParameter("Celular", MySqlDbType.VarChar, 10);
                //asignamos el valor al parametro
                Pcelular.Value = celular;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pcelular);
                //creamos los parametros
                MySqlParameter Pdireccion = new MySqlParameter("Direccion", MySqlDbType.VarChar, 20);
                //asignamos el valor al parametro
                Pdireccion.Value = direccion;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pdireccion);
                //creamos los parametros
                MySqlParameter Pcorreoelectronico = new MySqlParameter("email", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Pcorreoelectronico.Value = correoelectronico;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pcorreoelectronico);
                //creamos los parametros
                MySqlParameter Ptipo = new MySqlParameter("Tipo", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Ptipo.Value = tipo;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Ptipo);
                //creamos los parametros
                MySqlParameter Pusuario = new MySqlParameter("Usuario", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Pusuario.Value = usuario;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pusuario);
                //creamos los parametros
                MySqlParameter Pcontraseña = new MySqlParameter("Contraseña", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Pcontraseña.Value = contraseña;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pcontraseña);
                cmd.Connection.Open();
                int resultado;
                resultado = cmd.ExecuteNonQuery();
                if (resultado == 1)
                {
                    return "Cliente Registrado Correctamente";
                }
                else
                {
                    return "Ocurrio un error al registrar el Cliente";
                }
            }
            //capturar el error
            catch (Exception e)
            {
                //muestra el error al usuario
                throw new Exception("Hubo un error al ejecutar el procedimiento SP_Cliente_Guardar " + e.Message);
            }
            finally
            {
                //cierro la conexion
                cmd.Connection.Close();
            }
        }

        public DataTable seleccionar()
        {
            MySqlCommand cmd = new MySqlCommand("SP_Cliente_Seleccionar", conn);
            try
            {
                cmd.CommandType = CommandType.StoredProcedure;
                MySqlDataReader Dr;
                DataTable Dt = new DataTable();
                cmd.Connection.Open();
                Dr = cmd.ExecuteReader();
                Dt.Load(Dr);
                return Dt;
            }
            //capturar el error
            catch (Exception e)
            {
                //muestra el error al usuario
                throw new Exception("Hubo un error al ejecutar el procedimiento SP_Cliente_Seleccionar " + e.Message);
            }
            finally
            {
                //cierro la conexion
                cmd.Connection.Close();
            }
        }

        public string Editar()
        
        {
            //creamos un comando para almacenar el procedimiento almacenado
            MySqlCommand cmd = new MySqlCommand("SP_Cliente_Actualizar", conn);
            try
            {
                //le damos un tipo al comando
                cmd.CommandType = CommandType.StoredProcedure;
                //creamos los parametros
                MySqlParameter PCedula = new MySqlParameter("Cedula", MySqlDbType.VarChar, 10);
                //asignamos el valor al parametro
                PCedula.Value = cedula;
                //agregamos el parametro al comando
                cmd.Parameters.Add(PCedula);
                //creamos los parametros
                MySqlParameter Pnombre = new MySqlParameter("Nombre", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Pnombre.Value = nombre;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pnombre);
                //creamos los parametros
                MySqlParameter Papellido = new MySqlParameter("Apellido", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Papellido.Value = apellido;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Papellido);
                //creamos los parametros
                MySqlParameter Psexo = new MySqlParameter("Sexo", MySqlDbType.VarChar);
                //asignamos el valor al parametro
                Psexo.Value = sexo;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Psexo);
                //creamos los parametros
                MySqlParameter Pfechanacimiento = new MySqlParameter("FechaN", MySqlDbType.VarChar);
                //asignamos el valor al parametro
                Pfechanacimiento.Value = fechanacimiento;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pfechanacimiento);
                //creamos los parametros
                MySqlParameter Ptelefono = new MySqlParameter("Telefono", MySqlDbType.VarChar, 7);
                //asignamos el valor al parametro
                Ptelefono.Value = telefono;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Ptelefono);
                //creamos los parametros
                MySqlParameter Pcelular = new MySqlParameter("Celular", MySqlDbType.VarChar, 10);
                //asignamos el valor al parametro
                Pcelular.Value = celular;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pcelular);
                //creamos los parametros
                MySqlParameter Pdireccion = new MySqlParameter("Direccion", MySqlDbType.VarChar, 20);
                //asignamos el valor al parametro
                Pdireccion.Value = direccion;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pdireccion);
                //creamos los parametros
                MySqlParameter Pcorreoelectronico = new MySqlParameter("email", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Pcorreoelectronico.Value = correoelectronico;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pcorreoelectronico);
                //creamos los parametros
                MySqlParameter Ptipo = new MySqlParameter("Tipo", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Ptipo.Value = tipo;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Ptipo);
                //creamos los parametros
                MySqlParameter Pusuario = new MySqlParameter("Usuario", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Pusuario.Value = usuario;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pusuario);
                //creamos los parametros
                MySqlParameter Pcontraseña = new MySqlParameter("Contraseña", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Pcontraseña.Value = contraseña;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pcontraseña);
                cmd.Connection.Open();
                int resultado;
                resultado = cmd.ExecuteNonQuery();
                if (resultado == 1)
                {
                    return "Arrendatario Actualizado Correctamente";
                }
                else
                {
                    return "Ocurrio un error al Actualizar el Arrendatario";
                }
            }
            //capturar el error
            catch (Exception e)
            {
                //muestra el error al usuario
                throw new Exception("Hubo un error al ejecutar el procedimiento SP_Arrendatario_Actualizar " + e.Message);
            }
            finally
            {
                //cierro la conexion
                cmd.Connection.Close();
            }
        }

        public string eliminar()
        {//creamos un comando para almacenar el procedimiento almacenado
            MySqlCommand cmd = new MySqlCommand("SP_Cliente_Eliminar", conn);
            try
            {
                //le damos un tipo al comando
                cmd.CommandType = CommandType.StoredProcedure;
                MySqlParameter PCedula = new MySqlParameter("Cedula", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                PCedula.Value = cedula;
                //agregamos el parametro al comando
                cmd.Parameters.Add(PCedula);
                cmd.Connection.Open();
                int resultado;
                resultado = cmd.ExecuteNonQuery();
                if (resultado == 0)
                {
                    return "Cliente Eliminado Correctamente";
                }
                else
                {
                    return "Ocurrio un error al Eliminar el Cliente";
                }
            }
            //capturar el error
            catch (Exception e)
            {
                //muestra el error al usuario
                throw new Exception("Hubo un error al ejecutar el procedimiento SP_Cliente_Eliminar " + e.Message);
            }
            finally
            {
                //cierro la conexion
                cmd.Connection.Close();
            }
        }

        public DataTable Buscar(string busqueda, string valor)
        {
            MySqlCommand cmd = new MySqlCommand("SP_Cliente_Buscar", conn);
            try
            {
                cmd.CommandType = CommandType.StoredProcedure;
                MySqlDataReader Dr;
                DataTable Dt = new DataTable();
                //creamos los parametros
                MySqlParameter Pbusqueda = new MySqlParameter("pbusqueda", MySqlDbType.VarChar, 25);
                //asignamos el valor al parametro
                Pbusqueda.Value = busqueda;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pbusqueda);
                //creamos los parametros
                MySqlParameter Pvalor = new MySqlParameter("pvalor", MySqlDbType.VarChar, 50);
                //asignamos el valor al parametro
                Pvalor.Value = valor;
                //agregamos el parametro al comando
                cmd.Parameters.Add(Pvalor);
                cmd.Connection.Open();
                Dr = cmd.ExecuteReader();
                Dt.Load(Dr);
                return Dt;
            }
            //capturar el error
            catch (Exception e)
            {
                //muestra el error al usuario
                throw new Exception("Hubo un error al ejecutar el procedimiento SP_Cliente_Buscar " + e.Message);
            }
            finally
            {
                //cierro la conexion
                cmd.Connection.Close();
            }
        }
   }
}