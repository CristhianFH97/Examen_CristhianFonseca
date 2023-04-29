using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen_CristhianFonseca
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bingresar_Click(object sender, EventArgs e)
        {
            ClsUsuario.login = tlogin.Text;
            ClsUsuario.clave = tclave.Text;

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["VeterinariaConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select Login_Usuario, Clave_Usuario from Mae_Usuarios where Login_Usuario = '" + ClsUsuario.login + "' " +
                "and Clave_Usuario = '" + ClsUsuario.clave + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                Response.Redirect("inicio.aspx");
            }
            else
            {
                lmensaje.Text = "Usuario o Contraseña incorrecto";
            }

            conexion.Close();
        }

        protected void BTAgregarUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrearUsuario.aspx");
        }
    }
}