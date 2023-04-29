using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen_CristhianFonseca
{
    public partial class UsuariosEdicion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTMod_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TNuevoLogin.Text) || string.IsNullOrWhiteSpace(TNombreUsuario.Text) || string.IsNullOrWhiteSpace(TNuevaClave.Text))
            {
                lmensaje.Text = "Por favor, completa todos los campos";
            }
            else
            {
                SqlUsuariosED.Update();
                lmensaje.Text = "Actualizado";
            }
        }

        protected void BTEliminar_Click(object sender, EventArgs e)
        {
            SqlUsuariosED.Delete();
            lmensaje.Text = "Eliminado";
            Response.Redirect("UsuariosEdicion.aspx");
        }

        protected void BTCrearUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrearUsuario.aspx");
        }
    }
}