using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen_CristhianFonseca
{
    public partial class CrearUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTCrearUsuario_Click(object sender, EventArgs e)
        {
            ClsUsuario.login = tlogin.Text;
            ClsUsuario.clave = tclave.Text;
            ClsUsuario.nombre = tnombreUsuario.Text;

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["VeterinariaConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("INSERT INTO Mae_Usuarios (Login_Usuario, Clave_Usuario, Nombre_Usuario) VALUES ('" + ClsUsuario.login + "', '" + ClsUsuario.clave + "', '" + ClsUsuario.nombre + "')", conexion);
            int result = comando.ExecuteNonQuery();
            if (result > 0)
            {
                lmensaje.Text = "Usuario creado";
            }
            else
            {
                lmensaje.Text = "Error al crear el usuario";
            }

            conexion.Close();
        }

        protected void BTIraInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}