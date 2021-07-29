<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ModificarPunto.aspx.cs" Inherits="PuntosCargaDinamicos.EditarPunto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class ="card mt-10">
                 <div >
                <asp:Label ID="mensajeDbl" CssClass="text-success h1" runat="server"></asp:Label>
                 </div>

                <div class="card-header bg-success text-white text-center">
                    <h3>Modificador Punto de Carga</h3>
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
                        <asp:Button ID="ModicarPuntoBtn" runat="server" Text="Modificar Punto" 
                            CssClass="btn btn-primary" OnClick="ModicarPuntoBtn_Click"/>
                    </div>
                    
                </div>
            </div>
</asp:Content>
