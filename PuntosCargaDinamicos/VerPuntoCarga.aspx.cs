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
    public partial class VerPuntoCarga : System.Web.UI.Page
    {
        PuntoCargaDAL puntosDAL = new PuntoCargaDAL();

       private void CargarPuntos(List<PuntoCarga> puntos)
        {
            puntosGrid.DataSource = puntos;
            puntosGrid.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarPuntos(puntosDAL.GetAll());
            }
        }

        public void puntosGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminarPunto")
            {
                String codigoPunto = e.CommandArgument.ToString();
                puntosDAL.Remove(codigoPunto);
                CargarPuntos(puntosDAL.GetAll());
            }

            if (e.CommandName == "modificarPunto")
            {
 
                String codigoPunto = e.CommandArgument.ToString();
            
            }
   
        }
       

        protected void filtroCapacidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            int autoSelec = Convert.ToInt32(filtroCapacidad.SelectedValue);
            List<PuntoCarga> filtrado = puntosDAL.GetAll(autoSelec);
            CargarPuntos(filtrado);
        }
        protected void allChx_CheckedChanged(object sender, EventArgs e)
        {
            allChx.Enabled = !allChx.Checked;
            if (allChx.Checked)
            {
                CargarPuntos(puntosDAL.GetAll());
            }
        }
    }
}