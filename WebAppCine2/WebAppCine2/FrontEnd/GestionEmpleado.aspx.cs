using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCine2.FrontEnd
{
    public partial class GestionVendedor : System.Web.UI.Page
    {
        BackEnd.clsUsuario objUsuario = new BackEnd.clsUsuario();
        BackEnd.clsempleaado objEmpleado = new BackEnd.clsempleaado();
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
            objEmpleado._cedula = Convert.ToInt32(txtCedula.Text);
            objEmpleado._nombre = txtNombre.Text;
            objEmpleado._apellido = txtApellido.Text;
            objEmpleado._telefono = txtTelefono.Text;
            objEmpleado._celular = txtCelular.Text;
            objEmpleado._direccion = txtDireccion.Text;
            objEmpleado._sexo = txtSexo.Text;
            objEmpleado._fechaN = txtFechaN.Text;
            objEmpleado._sueldo = Convert.ToInt32(txtSueldo.Text);
            objEmpleado._correoelectronico = txtEmail.Text;
            objEmpleado._usuario = txtUsuario.Text;
            objEmpleado._contraseña = txtContraseña.Text;
            mensaje = objEmpleado.guardar();
            this.Page.Response.Write("<script language='JavaScript'>window.alert('" + mensaje + "');</script>");
            Seleccionar();
            Limpiar();
        }

        public void Seleccionar()
        {
            gvVendedor.DataSource = objEmpleado.seleccionar();
            gvVendedor.DataBind();
        }

        protected void gvVendedor_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gv;
            txtCedula.Enabled = false;
            gv = gvVendedor.SelectedRow;
            txtCedula.Text = gv.Cells[1].Text;
            txtNombre.Text = gv.Cells[2].Text;
            txtApellido.Text = gv.Cells[3].Text;
            txtDireccion.Text = gv.Cells[4].Text;
            txtTelefono.Text = gv.Cells[5].Text;
            txtCelular.Text = gv.Cells[6].Text;
            txtSexo.Text = gv.Cells[7].Text;
            txtSueldo.Text = gv.Cells[8].Text;
            txtFechaN.Text = gv.Cells[9].Text;
            txtEmail.Text = gv.Cells[10].Text;
            txtUsuario.Text = gv.Cells[11].Text;
            txtContraseña.Text = gv.Cells[12].Text;
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            objEmpleado._cedula = Convert.ToInt32(txtCedula.Text);
            objEmpleado._nombre = txtNombre.Text;
            objEmpleado._apellido = txtApellido.Text;
            objEmpleado._telefono = txtTelefono.Text;
            objEmpleado._celular = txtCelular.Text;
            objEmpleado._direccion = txtDireccion.Text;
            objEmpleado._sexo = txtSexo.Text;
            objEmpleado._fechaN = txtFechaN.Text;
            objEmpleado._sueldo = Convert.ToInt32(txtSueldo.Text);
            objEmpleado._correoelectronico = txtEmail.Text;
            objEmpleado._usuario = txtUsuario.Text;
            objEmpleado._contraseña = txtContraseña.Text;
            mensaje = objEmpleado.Editar();
            this.Page.Response.Write("<script language='JavaScript'>window.alert('" + mensaje + "');</script>");
            Seleccionar();
            Limpiar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            objEmpleado._cedula = Convert.ToInt32(txtCedula.Text);
            objEmpleado.eliminar();
            mensaje = objEmpleado.eliminar();
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
            txtEmail.Text = "";
            txtTelefono.Text = "";
            txtCelular.Text = "";
            txtDireccion.Text = "";
            txtFechaN.Text = "";
            txtSexo.Text = "";
            txtSueldo.Text = "";
            txtUsuario.Text = "";
            txtContraseña.Text = "";
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            gvVendedor.DataSource = objEmpleado.Buscar(ddlBuscar.SelectedItem.Text, txtBuscar.Text);
            gvVendedor.DataBind();
        }

        protected void gvVendedor_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvVendedor.PageIndex = e.NewPageIndex;
            gvVendedor.DataSource = objEmpleado.seleccionar();
            gvVendedor.DataBind();
        }
    }
}