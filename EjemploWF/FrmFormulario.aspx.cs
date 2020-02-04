using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EjemploWF
{
    public partial class FrmFormulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid && CheckBox1.Checked==true)
            {
                Response.Redirect("bienvenido.aspx");
            }
            else
            {
                if (IsValid)
                {
                    Response.Write("<script>alert('no acepto los terminos y condiciones');</script>");
                }
            }
            
        }
    }
}