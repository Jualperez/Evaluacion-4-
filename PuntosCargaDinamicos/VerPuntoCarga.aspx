<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="VerPuntoCarga.aspx.cs" Inherits="PuntosCargaDinamicos.VerPuntoCarga" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="mt-8 m-lg-4 h5">
       <asp:DropDownList ID="filtroCapacidad" runat="server"
        AutoPostBack="true" OnSelectedIndexChanged="filtroCapacidad_SelectedIndexChanged"
        >
        <asp:ListItem Value="1" Selected="True" Text="1"></asp:ListItem>
        <asp:ListItem Value="2" Text="2"></asp:ListItem>
        <asp:ListItem Value="3" Text="3"></asp:ListItem>
        <asp:ListItem Value="4" Text="4"></asp:ListItem>
        <asp:ListItem Value="5" Text="5"></asp:ListItem>

    </asp:DropDownList >
        <asp:CheckBox ID="allChx" Checked="true"  runat="server" CssClass="m-3 h3"
            AutoPostBack="true" OnCheckedChanged="allChx_CheckedChanged" Text="Todos"
            />
    </div>
    
    <div class="mt-5 m-3 h4">
        <div class="card">
            <div class="card-header bg-danger text-white">
                <h3>Puntos de Cargas Agregadas</h3>
            </div>
            <div class="card-body">
        <asp:GridView ID="puntosGrid" runat="server"
            AutoGenerateColumns="false" CssClass="table table-hover" OnRowCommand="puntosGrid_RowCommand"
            EmptyDataText="No se han encontrado ningun punto existente">
            <Columns>
                <asp:BoundField HeaderText="Nombre de la estacion" DataField="Nombre"/>
                <asp:BoundField HeaderText="Codigo" DataField="Codigo"/>
                <asp:BoundField HeaderText="Capacidad de Autos" DataField="capacidadAutos"/>
                <asp:BoundField HeaderText="Tipo" DataField="Tipo"/>
                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                        <asp:Button ID="eliminarButton" runat="server" Text="Eliminar Punto"
                            CssClass="btn btn-danger" CommandName="eliminarPunto"
                            CommandArgument='<%# Eval("Codigo") %>' />
                           <asp:Button class="m-lg-3" ID="modificarButton" runat="server" Text="Modificar Punto" 
                            CssClass="btn btn-dark " Command="modificarPunto" CommandArgument='<%# Eval("Codigo") %>'
                            />

                    </ItemTemplate>

                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
