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
    public partial class AgregarEstacionServicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           List<Region> regiones = new RegionDAL().GetAll();
           regionDdl.DataSource = regiones;
           regionDdl.DataTextField = "Nombre";
           regionDdl.DataValueField = "Codigo";
           regionDdl.DataBind();
        }

        protected void ingresarEstacionBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
                if (DireccionTxt.Text.Length >= 10)
                {
                   if(NombreTxt.Text.Length >= 4)
                    {
                        string nombreE = NombreTxt.Text.Trim();
                        string codigoE = CodigoTxt.Text.Trim();
                        String regionE = regionDdl.SelectedValue;
                        string direccionE = DireccionTxt.Text.Trim();
                        int numeroE = Convert.ToInt32(numeroRbl.SelectedValue);

                        EstacionServicio et = new EstacionServicio();
                        et.Nombre = nombreE;
                        et.Codigo = codigoE;
                        et.Region = regionE;
                        et.Direccion = direccionE;
                        et.NumeroDePuntos = numeroE;

                        new EstacionServicioDAL().Add(et);
                        mensajeDbl.Text = "Estacion Agregada";
                        Limpiar();
                    }
                    else
                    {
                        mensajeDbl.Text = "Debe ingresar un nombre valido";
                    }
                }
                else
                {
                    mensajeDbl.Text = "Debe ingresar una direccion valida";
                }
            
           
            else
            {

            }
           
        }
        private void Limpiar()
        {
            NombreTxt.Text = "";
            CodigoTxt.Text = "";
            DireccionTxt.Text = "";
            regionDdl.SelectedIndex = 0;
        }


    }
}




