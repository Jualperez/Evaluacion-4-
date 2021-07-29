<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="AgregarEstacionServicio.aspx.cs" Inherits="PuntosCargaDinamicos.AgregarEstacionServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row mt-10">
        <div class="col-12 col-md-6 col-lg-5 mx-auto mt-10">
               <div class="bg-success mb-3 mt-2">
                <asp:Label ID="mensajeDbl" CssClass="text-white h3 text-center" runat="server"></asp:Label>
                 </div>
            <div class ="card">
                <div class="card-header bg-success text-white text-center">
                    <h3>Registrar Estacion de Servicio</h3>
                </div>
                <div class="card-body">
                    <div class="m-3 text-center">
                        <label class="form-label h4" for="NombreTxt">Nombre</label>
                        <asp:TextBox runat="server" ID="NombreTxt" CssClass="form-control mt-2 "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="Debe Ingresar Un Nombre" CssClass="text-danger"
                            ControlToValidate="NombreTxt"
                            ></asp:RequiredFieldValidator>
                    </div>
                    <div class="m-3 text-center">
                        <label class="form-label h4" for="CodigoTxt">Codigo</label>
                        <asp:TextBox runat="server" ID="CodigoTxt" CssClass="form-control mt-2" KeyPress="codigoTxt_KeyPress" ></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Debe Ingresar un Codigo" CssClass="text-danger" 
                            ControlToValidate="CodigoTxt" 
                            ></asp:RequiredFieldValidator>

                    </div>
                    <div class="m-3 text-center">
                        <label class="form-label h4">Region Ubicada</label>
                        <asp:DropDownList ID="regionDdl" runat="server" CssClass="form-control mt-2"></asp:DropDownList>   
                    </div>
                     <div class="m-3 text-center">
                        <label class="form-label h4" for="DireccionTxt">Direccion</label>
                        <asp:TextBox runat="server" ID="DireccionTxt" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ErrorMessage="Debe Ingresar una Direccion" CssClass="text-danger"
                            ControlToValidate="DireccionTxt"
                            ></asp:RequiredFieldValidator>
                    </div>
                    <div class="m-3 text-center">
                        <label class="h3" for="numeroRbl">Capacidad de autos dentro de la bomba</label>
                          <asp:RadioButtonList  ID="numeroRbl" runat="server" CssClass="form-control mt-2 ">
                              <asp:ListItem Value ="1" Selected="True" Text="1"></asp:ListItem>
                              <asp:ListItem Value="2"  Text="2"></asp:ListItem>
                              <asp:ListItem Value="3"  Text="3"></asp:ListItem>
                              <asp:ListItem Value="4"  Text="4"></asp:ListItem>
                              <asp:ListItem Value="5"  Text="5"></asp:ListItem>
                              <asp:ListItem Value="6"  Text="6"></asp:ListItem>
                              <asp:ListItem Value="7"  Text="7"></asp:ListItem>
                              <asp:ListItem Value="8"  Text="8"></asp:ListItem>
                              <asp:ListItem Value="9"  Text="9"></asp:ListItem>
                              <asp:ListItem Value="10"  Text="10"></asp:ListItem>

                          </asp:RadioButtonList>
                    </div>
                  <div class="mb-3 text-center ">
                        <asp:Button ID="ingresarEstacionBtn" runat="server" Text="Agregar Estacion" 
                            CssClass="btn btn-primary mt-2" OnClick="ingresarEstacionBtn_Click"/>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>