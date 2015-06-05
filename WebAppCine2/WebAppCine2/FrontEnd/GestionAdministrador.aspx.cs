using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCine2.FrontEnd
{
    public partial class GestionAdministrador : System.Web.UI.Page
    {
        BackEnd.clsUsuario objUsuario = new BackEnd.clsUsuario();
        BackEnd.clsadministrador objAdmin = new BackEnd.clsadministrador();
        string mensaje;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Seleccionar();
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            objAdmin._cedula = Convert.ToInt32(txtCedula.Text);
            objAdmin._nombre = txtNombre.Text;
            objAdmin._apellido = txtApellido.Text;
            objAdmin._telefono = txtTelefono.Text;
            objAdmin._celular = txtCelular.Text;
            objAdmin._direccion = txtDireccion.Text;
            objAdmin._sexo = txtSexo.Text;
            objAdmin._fechaN = txtFechaN.Text;
            objAdmin._correoelectronico = txtCorreo.Text;
            objAdmin._usuario = txtUsuario.Text;
            objAdmin._contraseña = txtContraseña.Text;
            mensaje = objAdmin.guardar();
            this.Page.Response.Write("<script language='JavaScript'>window.alert('" + mensaje + "');</script>");
            Limpiar();
            Seleccionar();
        }

        public void Seleccionar()
        {
            gvAdmin.DataSource = objAdmin.seleccionar();
            gvAdmin.DataBind();
        }

        protected void gvAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gv;
            txtCedula.Enabled = false;
            gv = gvAdmin.SelectedRow;
            txtCedula.Text = gv.Cells[1].Text;
            txtNombre.Text = gv.Cells[2].Text;
            txtApellido.Text = gv.Cells[3].Text;
            txtTelefono.Text = gv.Cells[4].Text;
            txtCelular.Text = gv.Cells[5].Text;
            txtDireccion.Text = gv.Cells[6].Text;
            txtSexo.Text = gv.Cells[7].Text;
            txtFechaN.Text = gv.Cells[8].Text;
            txtCorreo.Text = gv.Cells[9].Text;
            txtUsuario.Text = gv.Cells[10].Text;
            txtContraseña.Text = gv.Cells[11].Text;
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            objAdmin._cedula = Convert.ToInt32(txtCedula.Text);
            objAdmin._nombre = txtNombre.Text;
            objAdmin._apellido = txtApellido.Text;
            objAdmin._telefono = txtTelefono.Text;
            objAdmin._celular = txtCelular.Text;
            objAdmin._direccion = txtDireccion.Text;
            objAdmin._sexo = txtSexo.Text;
            objAdmin._fechaN = txtFechaN.Text;
            objAdmin._correoelectronico = txtCorreo.Text;
            objAdmin._usuario = txtUsuario.Text;
            objAdmin._contraseña = txtContraseña.Text;
            mensaje = objAdmin.Editar();
            this.Page.Response.Write("<script language='JavaScript'>window.alert('" + mensaje + "');</script>");
            Limpiar();
            Seleccionar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            objAdmin._cedula = Convert.ToInt32(txtCedula.Text);
            objAdmin.eliminar();
            mensaje = objAdmin.eliminar();
            this.Page.Response.Write("<script language='JavaScript'>window.alert('" + mensaje + "');</script>");
            Seleccionar();
        }

        public void Limpiar()
        {
            txtCedula.Enabled = true;
            txtCedula.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtCorreo.Text = "";
            txtTelefono.Text = "";
            txtCelular.Text = "";
            txtDireccion.Text = "";
            txtFechaN.Text = "";
            txtCorreo.Text = "";
            txtUsuario.Text = "";
            txtContraseña.Text = "";
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            gvAdmin.DataSource = objAdmin.Buscar(ddlBuscar.SelectedItem.Text, txtBuscar.Text);
            gvAdmin.DataBind();
        }
    }
}