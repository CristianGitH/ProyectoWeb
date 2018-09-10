using System;

namespace Proyecto.Web.Views.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!IsPostBack)
            //ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script>swal('Buen trabajo!', 'Se realizo proceso con exito!', 'success')</script>");
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                string stMensaje = string.Empty;
                if (String.IsNullOrEmpty(txtEmail.Text)) stMensaje+="Ingrese Email,";
                if (String.IsNullOrEmpty(txtPassword.Text)) stMensaje += "Ingrese Password,";

                if (!string.IsNullOrEmpty(stMensaje)) throw new Exception(stMensaje.TrimEnd(','));

                //Defino objeto con propiedades 
                Logica.Models.clsUsuarios obclsUsuarios = new Logica.Models.clsUsuarios
                {
                    stLogin = txtEmail.Text,
                    stPassword= txtPassword.Text
                };

                //Instancio controlador,
                Controllers.LoginController obLoginController = new Controllers.LoginController();
                bool blBandera = obLoginController.getValidarUsuarioController(obclsUsuarios);

                if (blBandera)
                    Response.Redirect("../Index/Index.aspx");//Redirecciono 
                else
                    throw new Exception("Usuario o password incorrectos");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script>swal('Error!','"+ ex.Message+"' , 'error')</script>");
            }
        }
    }
}