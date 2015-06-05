using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCine2
{
    public partial class Inicio : System.Web.UI.Page
    {
        //BackEnd.clsinmueble objInmueble = new BackEnd.clsinmueble();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //SeleccionarI();
            }
        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string perfil;
            string mensaje;
            BackEnd.clsUsuario objUsuario = new BackEnd.clsUsuario();
            objUsuario._nombre = txtUsuario.Text;
            objUsuario._password = txtContraseña.Text;
            perfil = objUsuario.validar();

            if (perfil == "1")
            {
                Session["Usuario"] = txtUsuario.Text;
                Session["Perfil"] = perfil;
                Response.Redirect("/FrontEnd/frmHomeAdmin.aspx");
            }
            else if (perfil == "2")
            {
                Session["Usuario"] = txtUsuario.Text;
                Session["Perfil"] = perfil;
                Response.Redirect("/FrontEnd/frmHomeVendedor.aspx");
            }
            else if (perfil == "3")
            {
                Session["Usuario"] = txtUsuario.Text;
                Session["Perfil"] = perfil;
                Response.Redirect("/FrontEnd/frmHomeArrendatario.aspx");
            }
            {
                mensaje = "Usuario y/o contraseña incorrectos";
                this.Page.Response.Write("<script language='JavaScript'>window.alert('" + mensaje + "');</script>");

            }
        }
        /*
        public void SeleccionarI()
        {
            gvInmuebleinicio.DataSource = objInmueble.seleccionarInicio();
            gvInmuebleinicio.DataBind();
        }
        protected void gvInmuebleinicio_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gv;
            gv = gvInmuebleinicio.SelectedRow;
            if(gv.Cells[1].Text == "5")
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
            }
            else if (gv.Cells[1].Text == "7")
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
            }
            else if (gv.Cells[1].Text == "9")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = false;
                Panel5.Visible = false;
            }
            else if (gv.Cells[1].Text == "8")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
                Panel5.Visible = false;
            }
            else if (gv.Cells[1].Text == "10")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = true;
            }
        }
        protected void gvInmuebleinicio_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvInmuebleinicio.PageIndex = e.NewPageIndex;
            gvInmuebleinicio.DataSource = objInmueble.seleccionarInicio();
            gvInmuebleinicio.DataBind();
        }
        
        protected void btnCasa1_1_Click(object sender, ImageClickEventArgs e)
        {
            Image1_1.Visible = true;
            Image1_2.Visible = false;
            Image1_3.Visible = false;
            Image1_4.Visible = false;
            Image1_5.Visible = false;
        }

        protected void btnCasa1_2_Click(object sender, ImageClickEventArgs e)
        {
            Image1_1.Visible = false;
            Image1_2.Visible = true;
            Image1_3.Visible = false;
            Image1_4.Visible = false;
            Image1_5.Visible = false;
        }

        protected void btnCasa1_3_Click(object sender, ImageClickEventArgs e)
        {
            Image1_1.Visible = false;
            Image1_2.Visible = false;
            Image1_3.Visible = true;
            Image1_4.Visible = false;
            Image1_5.Visible = false;
        }

        protected void btnCasa1_4_Click(object sender, ImageClickEventArgs e)
        {
            Image1_1.Visible = false;
            Image1_2.Visible = false;
            Image1_3.Visible = false;
            Image1_4.Visible = true;
            Image1_5.Visible = false;
        }

        protected void btnCasa1_5_Click(object sender, ImageClickEventArgs e)
        {
            Image1_1.Visible = false;
            Image1_2.Visible = false;
            Image1_3.Visible = false;
            Image1_4.Visible = false;
            Image1_5.Visible = true;
        }

        protected void btnCasa2_1_Click(object sender, ImageClickEventArgs e)
        {
            Image2_1.Visible = true;
            Image2_2.Visible = false;
            Image2_3.Visible = false;
            Image2_4.Visible = false;
            Image2_5.Visible = false;
        }

        protected void btnCasa2_2_Click(object sender, ImageClickEventArgs e)
        {
            Image2_1.Visible = false;
            Image2_2.Visible = true;
            Image2_3.Visible = false;
            Image2_4.Visible = false;
            Image2_5.Visible = false;
        }

        protected void btnCasa2_3_Click(object sender, ImageClickEventArgs e)
        {
            Image2_1.Visible = false;
            Image2_2.Visible = false;
            Image2_3.Visible = true;
            Image2_4.Visible = false;
            Image2_5.Visible = false;
        }

        protected void btnCasa2_4_Click(object sender, ImageClickEventArgs e)
        {
            Image2_1.Visible = false;
            Image2_2.Visible = false;
            Image2_3.Visible = false;
            Image2_4.Visible = true;
            Image2_5.Visible = false;
        }

        protected void btnCasa2_5_Click(object sender, ImageClickEventArgs e)
        {
            Image2_1.Visible = false;
            Image2_2.Visible = false;
            Image2_3.Visible = false;
            Image2_4.Visible = false;
            Image2_5.Visible = true;
        }

        protected void btnCasa3_1_Click(object sender, ImageClickEventArgs e)
        {
            Image3_1.Visible = true;
            Image3_2.Visible = false;
            Image3_3.Visible = false;
            Image3_4.Visible = false;
            Image3_5.Visible = false;
        }

        protected void btnCasa3_2_Click(object sender, ImageClickEventArgs e)
        {
            Image3_1.Visible = false;
            Image3_2.Visible = true;
            Image3_3.Visible = false;
            Image3_4.Visible = false;
            Image3_5.Visible = false;
        }

        protected void btnCasa3_3_Click(object sender, ImageClickEventArgs e)
        {
            Image3_1.Visible = false;
            Image3_2.Visible = false;
            Image3_3.Visible = true;
            Image3_4.Visible = false;
            Image3_5.Visible = false;
        }

        protected void btnCasa3_4_Click(object sender, ImageClickEventArgs e)
        {
            Image3_1.Visible = false;
            Image3_2.Visible = false;
            Image3_3.Visible = false;
            Image3_4.Visible = true;
            Image3_5.Visible = false;
        }

        protected void btnCasa3_5_Click(object sender, ImageClickEventArgs e)
        {
            Image3_1.Visible = false;
            Image3_2.Visible = false;
            Image3_3.Visible = false;
            Image3_4.Visible = false;
            Image3_5.Visible = true;
        }

        protected void btnCasa4_1_Click(object sender, ImageClickEventArgs e)
        {
            Image4_1.Visible = true;
            Image4_2.Visible = false;
            Image4_3.Visible = false;
            Image4_4.Visible = false;
            Image4_5.Visible = false;
        }

        protected void btnCasa4_2_Click(object sender, ImageClickEventArgs e)
        {
            Image4_1.Visible = false;
            Image4_2.Visible = true;
            Image4_3.Visible = false;
            Image4_4.Visible = false;
            Image4_5.Visible = false;
        }

        protected void btnCasa4_3_Click(object sender, ImageClickEventArgs e)
        {
            Image4_1.Visible = false;
            Image4_2.Visible = false;
            Image4_3.Visible = true;
            Image4_4.Visible = false;
            Image4_5.Visible = false;
        }

        protected void btnCasa4_4_Click(object sender, ImageClickEventArgs e)
        {
            Image4_1.Visible = false;
            Image4_2.Visible = false;
            Image4_3.Visible = false;
            Image4_4.Visible = true;
            Image4_5.Visible = false;
        }

        protected void btnCasa4_5_Click(object sender, ImageClickEventArgs e)
        {
            Image4_1.Visible = false;
            Image4_2.Visible = false;
            Image4_3.Visible = false;
            Image4_4.Visible = false;
            Image4_5.Visible = true;
        }

        protected void btnCasa5_1_Click(object sender, ImageClickEventArgs e)
        {
            Image5_1.Visible = true;
            Image5_2.Visible = false;
            Image5_3.Visible = false;
            Image5_4.Visible = false;
            Image5_5.Visible = false;
        }

        protected void btnCasa5_2_Click(object sender, ImageClickEventArgs e)
        {
            Image5_1.Visible = false;
            Image5_2.Visible = true;
            Image5_3.Visible = false;
            Image5_4.Visible = false;
            Image5_5.Visible = false;
        }

        protected void btnCasa5_3_Click(object sender, ImageClickEventArgs e)
        {
            Image5_1.Visible = false;
            Image5_2.Visible = false;
            Image5_3.Visible = true;
            Image5_4.Visible = false;
            Image5_5.Visible = false;
        }

        protected void btnCasa5_4_Click(object sender, ImageClickEventArgs e)
        {
            Image5_1.Visible = false;
            Image5_2.Visible = false;
            Image5_3.Visible = false;
            Image5_4.Visible = true;
            Image5_5.Visible = false;
        }

        protected void btnCasa5_5_Click(object sender, ImageClickEventArgs e)
        {
            Image5_1.Visible = false;
            Image5_2.Visible = false;
            Image5_3.Visible = false;
            Image5_4.Visible = false;
            Image5_5.Visible = true;
        }*/
    }
}