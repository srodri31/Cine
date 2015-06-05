using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCine2
{
    public partial class Registro : System.Web.UI.Page
    {
        BackEnd.clscliente objcliente = new BackEnd.clscliente();
        string mensaje;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            objcliente._cedula = Convert.ToInt32(txtCedula.Text);
            objcliente._nombre = txtNombre.Text;
            objcliente._apellido = txtApellido.Text;
            objcliente._telefono = txtTelefono.Text;
            objcliente._celular = txtCelular.Text;
            objcliente._direccion = txtDireccion.Text;
            objcliente._sexo = txtSexo.Text;
            objcliente._fechanacimiento = txtFechaN.Text;
            objcliente._correoelectronico = txtCorreo.Text;
            objcliente._tipo = "Estandar";
            objcliente._usuario = txtUsuario.Text;
            objcliente._contraseña = txtContraseña.Text;
            mensaje = objcliente.guardar();
            this.Page.Response.Write("<script language='JavaScript'>window.alert('" + mensaje + "');</script>");
        }
    }
}