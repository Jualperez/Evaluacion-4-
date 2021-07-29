<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="VerEstacionesServicio.aspx.cs" Inherits="PuntosCargaDinamicos.VerEstacionesServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
  
    
    
    <div class="mt-5 m-3 h4">
        <div class="card">
            <div class="card-header bg-danger text-white">
                <h3>Estaciones Agregadas</h3>
            </div>
            <div class="card-body">
            
        <asp:GridView ID="estacionesGrid" runat="server"
            AutoGenerateColumns="false" CssClass="table table-hover" OnRowCommand="estacionesGrid_RowCommand"
            EmptyDataText="No se han encontrado ninguna estacion">
            <Columns>
                <asp:BoundField HeaderText="Nombre de la estacion" DataField="Nombre"/>
                <asp:BoundField HeaderText="Codigo" DataField="Codigo"/>
                <asp:BoundField HeaderText="Region" DataField="Region"/>
                <asp:BoundField HeaderText="Direccion" DataField="Direccion"/>
                <asp:BoundField HeaderText="Cantidad de Autos" DataField="numeroDePuntos"/>
                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                        <asp:Button ID="eliminarButton" runat="server" Text="Eliminar Estacion"
                            CssClass="btn btn-danger" CommandName="eliminarEstacion"
                            CommandArgument='<%# Eval("Codigo") %>' />
                        <asp:Button class="m-lg-3" ID="modificarButton" runat="server" Text="Modificar Punto" 
                            CssClass="btn btn-dark" CommandName="modificarEstacion"  CommandArgument ='<%# Eval("Codigo") %>'
                            />

           
                    </ItemTemplate>

                </asp:TemplateField>

            </Columns>
        </asp:GridView>
            </div>
        </div>
      </div>
 
</asp:Content>
