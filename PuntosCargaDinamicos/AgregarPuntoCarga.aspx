<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="AgregarPuntoCarga.aspx.cs" Inherits="PuntosCargaDinamicos.AgregarPuntoCarga" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row mt-10">
        <div class="col-12 col-md-6 col-lg-5 mx-auto mt-10">
                
               <div class="bg-success mb-3 mt-2">
                <asp:Label ID="mensajeDbl" CssClass="text-white h3 text-center" runat="server"></asp:Label>
                 </div>
            <div class ="card mt-10">
                <div class="card-header bg-success text-white text-center">
                    <h3>Registrar Punto de Carga</h3>
                </div>
                <div class="card-body">
                    <div class="m-3 text-center">
                        <label class="form-label h4" for="NombreTxt">Nombre</label>
                        <asp:TextBox runat="server" ID="NombreTxt" CssClass="form-control mt-2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="Debe Ingresar Un Nombre" CssClass="text-danger"
                            ControlToValidate="NombreTxt"
                            ></asp:RequiredFieldValidator>
                    </div>
                    <div class="m-3 text-center">
                        <label class="form-label h4" for="CodigoTxt">Codigo</label>
                        <asp:TextBox runat="server" ID="CodigoTxt" CssClass="form-control mt-2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="Debe Ingresar un Codigo" CssClass="text-danger"
                            ControlToValidate="CodigoTxt"
                            ></asp:RequiredFieldValidator>
                    </div>
                    <div class="m-3 text-center">
                        <label class="form-label h4">Tipo de Bomba</label>
                        <asp:DropDownList ID="tipoDdl" runat="server" CssClass="form-control mt-2 h3"></asp:DropDownList>   
                    </div>
                    <div class="m-3 text-center">
                        <label class="h3"for="numeroRbl">Capacidad de autos dentro de la estacion</label>
                          <asp:RadioButtonList class="" ID="numeroRbl" runat="server" CssClass="form-control mt-2">
                              <asp:ListItem Value="1" Selected="True" Text="1"></asp:ListItem>
                              <asp:ListItem Value="2"  Text="2"></asp:ListItem>
                              <asp:ListItem Value="3"  Text="3"></asp:ListItem>
                              <asp:ListItem Value="4"  Text="4"></asp:ListItem>
                              <asp:ListItem Value="5"  Text="5"></asp:ListItem>
   
                          </asp:RadioButtonList>
                    </div>
                  <div class="mb-3 text-center">
                        <asp:Button ID="ingresarPuntoBtn" runat="server" Text="Agregar Punto" 
                            CssClass="btn btn-primary" OnClick="ingresarPuntoBtn_Click"/>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
