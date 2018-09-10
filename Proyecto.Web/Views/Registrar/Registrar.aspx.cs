using System;

namespace Proyecto.Web.Views.Registrar
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click1(object sender, EventArgs e)
        {
            try
            {
                string stMensaje = string.Empty;
                if (String.IsNullOrEmpty(txtNombre.Text)) stMensaje += "Ingrese Nombre,";
                if (String.IsNullOrEmpty(txtApellido.Text)) stMensaje += "Ingrese Apellido,";
                if (String.IsNullOrEmpty(txtEmail.Text)) stMensaje += "Ingrese Email,";
                if (String.IsNullOrEmpty(txtPassword.Text)) stMensaje += "Ingrese Contraseña,";
                if (String.IsNullOrEmpty(txtConfirmarPassword.Text)) stMensaje += "Ingrese nuevamente la contraseña,";


                if (!string.IsNullOrEmpty(stMensaje)) throw new Exception(stMensaje.TrimEnd(','));
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script>swal('Error!','" + ex.Message + "' , 'error')</script>");
            }
        }
    }
}