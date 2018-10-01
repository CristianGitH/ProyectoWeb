using System;
using System.Data;

namespace Proyecto.Web.Views.Tareas
{
    public partial class Tareas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Controllers.TareasController obTareasController = new Controllers.TareasController();
                DataSet dsConsultaEstadoTareas = obTareasController.getConsultarEstadoTareasController();
                DataSet dsConsultaPrioridad = obTareasController.getConsultarPrioridadController();

                //Asigno origen de datos
                ddlEstadoTarea.DataSource = dsConsultaEstadoTareas;
                ddlEstadoTarea.DataTextField = "estaDescripcion";//lo que se muestra
                ddlEstadoTarea.DataValueField = "estaCodigo";//lo que equivale
                ddlEstadoTarea.DataBind();//Acepte los cambios


                //Asigno origen de datos
                ddlPrioridad.DataSource = dsConsultaPrioridad;
                ddlPrioridad.DataTextField = "prioDescripcion";//lo que se muestra
                ddlPrioridad.DataValueField = "prioCodigo";//lo que equivale
                ddlPrioridad.DataBind();//Acepte los cambios
            }
        }
    }
}