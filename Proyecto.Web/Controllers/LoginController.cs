using System;

namespace Proyecto.Web.Controllers
{
    public class LoginController
    {
        /// <summary>
        /// Validar Usuario
        /// </summary>
        /// <param name="obclsUsuarios">OBJETO USUARIO</param>
        /// <returns>CONFIRMACION</returns>
        public bool getValidarUsuarioController(Logica.Models.clsUsuarios obclsUsuarios) {
            try
            {
                Logica.BL.clsUsuarios obclsUsuario = new Logica.BL.clsUsuarios();
                return obclsUsuario.getValidarUsuario(obclsUsuarios);
            }
            catch (Exception ex) { throw ex; }
        }
    }
}