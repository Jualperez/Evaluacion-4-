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
    public partial class AgregarPuntoCarga : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Tipo> tipos = new TipoDAL().GetAll();
            tipoDdl.DataSource = tipos;
            tipoDdl.DataTextField = "Nombre";
            tipoDdl.DataValueField = "Codigo";
            tipoDdl.DataBind();
        }
    
        protected void ingresarPuntoBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (NombreTxt.Text.Length >= 4)
                {

                    string nombreT = NombreTxt.Text.Trim();
                    string codigoT = CodigoTxt.Text.Trim();
                    string tipoT = tipoDdl.SelectedValue;
                    int numeroT = Convert.ToInt32(numeroRbl.SelectedValue);

                    PuntoCarga ti = new PuntoCarga();
                    ti.Nombre = nombreT;
                    ti.Codigo = codigoT;
                    ti.Tipo = tipoT;
                    ti.CapacidadAutos = numeroT;

                    new PuntoCargaDAL().Add(ti);
                    mensajeDbl.Text = "Punto de Carga Agregada";
                    Limpiar();
                }
                else
                {
                    mensajeDbl.Text = "Debe ingresar una nombre valido";
                }
            }
            else
            {

            }
        }
        private void Limpiar()
        {
            NombreTxt.Text = "";
            CodigoTxt.Text = "";
            tipoDdl.SelectedIndex = 0;
        }
    }
}
