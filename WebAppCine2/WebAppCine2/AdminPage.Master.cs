using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace WebAppCine2
{
    public partial class Sigi : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                hpkUsuario.Text = Session["Usuario"].ToString();
            }
        }

        protected void btnCerrarS_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Inicio.aspx");
        }
    }
}
