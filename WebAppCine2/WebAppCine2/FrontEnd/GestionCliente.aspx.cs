using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;


namespace WebAppCine2.FrontEnd
{
    public partial class GestionArrendatario : System.Web.UI.Page
    {
        BackEnd.clscliente objcliente = new BackEnd.clscliente();
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
            objcliente._cedula = Convert.ToInt32(txtCedula.Text);
            objcliente._nombre = txtNombre.Text;
            objcliente._apellido = txtApellido.Text;
            objcliente._telefono = txtTelefono.Text;
            objcliente._celular = txtCelular.Text;
            objcliente._direccion = txtDireccion.Text;
            objcliente._sexo = txtSexo.Text;
            objcliente._fechanacimiento = txtFechaN.Text;
            objcliente._correoelectronico = txtCorreo.Text;
            objcliente._tipo = txtTipo.Text;
            objcliente._usuario = txtUsuario.Text;
            objcliente._contraseña = txtContraseña.Text;
            mensaje = objcliente.guardar();
            this.Page.Response.Write("<script language='JavaScript'>window.alert('" + mensaje + "');</script>");
            Seleccionar();
            Limpiar();
        }

        public void Seleccionar()
        {
            gvCliente.DataSource = objcliente.seleccionar();
            gvCliente.DataBind();
        }

        protected void gvArrendatario_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gv;
            txtCedula.Enabled = false;
            gv = gvCliente.SelectedRow;
            txtCedula.Text = gv.Cells[1].Text;
            txtNombre.Text = gv.Cells[2].Text;
            txtApellido.Text = gv.Cells[3].Text;
            txtSexo.Text = gv.Cells[4].Text;
            txtFechaN.Text = gv.Cells[5].Text;
            txtTelefono.Text = gv.Cells[6].Text;
            txtCelular.Text = gv.Cells[7].Text;
            txtDireccion.Text = gv.Cells[8].Text;
            txtCorreo.Text = gv.Cells[9].Text;
            txtTipo.Text = gv.Cells[10].Text;
            txtUsuario.Text = gv.Cells[11].Text;
            txtContraseña.Text = gv.Cells[12].Text;
        }

        protected void btnEditar_Click(object sender, EventArgs e)
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
            objcliente._tipo = txtTipo.Text;
            objcliente._usuario = txtUsuario.Text;
            objcliente._contraseña = txtContraseña.Text;
            objcliente.Editar();
            mensaje = objcliente.Editar();
            this.Page.Response.Write("<script language='JavaScript'>window.alert('" + mensaje + "');</script>");
            Seleccionar();
            Limpiar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            objcliente._cedula = Convert.ToInt32(txtCedula.Text);
            objcliente.eliminar();
            mensaje = objcliente.eliminar();
            this.Page.Response.Write("<script language='JavaScript'>window.alert('" + mensaje + "');</script>");
            Seleccionar();
            Limpiar();
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
            txtTipo.Text = "";
            txtUsuario.Text = "";
            txtContraseña.Text = "";
        }

        protected void btnlimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            gvCliente.DataSource = objcliente.Buscar(ddlBuscar.SelectedItem.Text, txtBuscar.Text);
            gvCliente.DataBind();
        }
    }
}