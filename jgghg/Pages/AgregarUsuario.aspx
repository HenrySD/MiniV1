<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Administrador.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="jgghg.Pages.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: small;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/bootstrap.css" rel="stylesheet" />
    
    
  

          
    <div class="container" style="margin:10% 0% 10% 0%">
       <center><h5>Agregar Nuevo Usuario</h5>
           <h6>Datos Nuevo Usuario</h6>
       </center>
       <form class="container"  novalidate="" runat="server" id="validar" >
  <div class="row">
    <div class="col-md-4 mb-3">
      <label for="valida1">Nombre
        <em>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNombre" CssClass="auto-style1" ErrorMessage="Solo letras" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        </em>&nbsp;<em><asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtNombre" CssClass="auto-style1" ErrorMessage="Entre 3 y 15 letras" MaximumValue="3" MinimumValue="15"></asp:RangeValidator>
        </em>&nbsp;</label><asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Ingrese Nombre" value="" required=""></asp:TextBox>
      
      <div class="invalid-feedback">
        Agregar Nombre
      </div>
    </div>
    <div class="col-md-4 mb-3">
      <label for="valida2">Apellido&nbsp;&nbsp;&nbsp;
        <em>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtApellido" CssClass="auto-style1" ErrorMessage="Solo letras" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        &nbsp;<asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtApellido" CssClass="auto-style1" ErrorMessage="Entre 3 y 15 letras" MaximumValue="3" MinimumValue="15"></asp:RangeValidator>
        &nbsp;
        </em>
        </label>
        &nbsp;<asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" placeholder="Ingrese Apellido" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Agregar Apellido
      </div>
    </div>
      <div class="col-md-4 mb-3">
      <label for="valida2">Correo de Usuario&nbsp;&nbsp;&nbsp; <em>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCorreo" CssClass="auto-style1" ErrorMessage="Ingrese un correo válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </em>&nbsp; </label>
        &nbsp;<asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="Ingrese Correo" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Agregar Correo
      </div>
    </div>
  </div>
           <div class="row">
    <div class="col-md-4 mb-3">
      <label for="valida1">Usuario&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
        &nbsp;<asp:TextBox ID="txtUsuario" runat="server" class="form-control" placeholder="Ingrese Usuario" value="" required=""></asp:TextBox>
      
      <div class="invalid-feedback">
        Agregar Usuario
      </div>
    </div>
    <div class="col-md-4 mb-3">
      <label for="valida2">Contraseña&nbsp;&nbsp;&nbsp;&nbsp; </label>
        &nbsp;<asp:TextBox ID="txtPass" runat="server" type="password" CssClass="form-control" placeholder="Ingrese Contraseña" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Agregar Contraseña
      </div>
    </div>
      <div class="col-md-4 mb-3">
      <label for="valida2">Repita Contraseña&nbsp;&nbsp; <em>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="TextBox3" CssClass="auto-style1" ErrorMessage="No coinciden"></asp:CompareValidator>
          </em>&nbsp; </label>
        &nbsp;<asp:TextBox ID="TextBox3" runat="server" type="password" CssClass="form-control" placeholder="Repita Contraseña" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        No Coinciden las Contraseñas
      </div>
    </div>


               
  </div>
           <center>      <h6>Dirreccion</h6></center> 
           <div class="row">
    <div class="col-md-4 mb-3">
      <label for="valida1">Calle</label>
        <asp:TextBox ID="txtCalle" runat="server" class="form-control" placeholder="Calle" value="" required=""></asp:TextBox>
      
      <div class="invalid-feedback">
        Campo Vasio
      </div>
    </div>
    <div class="col-md-4 mb-3">
      <label for="valida2">Barrio</label>
        <asp:TextBox ID="txtBarrio" runat="server" CssClass="form-control" placeholder="Barrio" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Campo Vasio
      </div>
    </div>
      <div class="col-md-4 mb-3">
      <label for="valida2">Colonia</label>
        <asp:TextBox ID="txtColonia" runat="server" CssClass="form-control" placeholder="Colonia" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Campo Vacio
      </div>
    </div>
</div>
           <div class="row">
    <div class="col-md-4 mb-3">
      <label for="valida1">Pasaje</label>
        <asp:TextBox ID="txtPasaje" runat="server" class="form-control" placeholder="Pasaje" value="" required=""></asp:TextBox>
      
      <div class="invalid-feedback">
        Campo Vasio
      </div>
    </div>
    <div class="col-md-4 mb-3">
      <label for="valida2">Numero de Casa</label>
        <asp:TextBox ID="txtNumCasa" runat="server" CssClass="form-control" placeholder="Nº Casa" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Campo Vasio
      </div>
    </div>
</div>
         <center><asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary" type="submit" OnClick="btnAceptar_Click" /></center> 
    
      </form>
        <script src="../js/jquery-3.3.1.min.js"></script>

        <script src="../js/FuncionValidar.js"></script>
   </div>





</asp:Content>
