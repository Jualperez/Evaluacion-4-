using PuntoDeCargaDinamico;
using PuntoDeCargaDinamico.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PuntosCargaDinamicos
{
    public partial class VerEstacionesServicio : System.Web.UI.Page
    {
        EstacionServicioDAL estacionesDAL = new EstacionServicioDAL();

        private void CargarEstaciones(List<EstacionServicio> estaciones)
        {
            estacionesGrid.DataSource = estaciones;
            estacionesGrid.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarEstaciones(estacionesDAL.GetAll());
            }
        }

        protected void estacionesGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "eliminarEstacion")
            {
                String codigoEliminar = e.CommandArgument.ToString();

                estacionesDAL.Remove(codigoEliminar);

                CargarEstaciones(estacionesDAL.GetAll());


            }else if (e.CommandName == "modificarEstacion")
            {
                String codigoModificar = e.CommandArgument.ToString();


              


            }
        }
       
    }
}