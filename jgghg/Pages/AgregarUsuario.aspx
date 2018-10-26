<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Administrador.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="jgghg.Pages.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/bootstrap.css" rel="stylesheet" />
    
    
  

          
    <div class="container" style="margin:10% 0% 10% 0%">
       <h5 style="text-align:center">Agregar Nuevo Usuario</h5>
           <h6 style="text-align:center">Datos Nuevo Usuario</h6>
       
       <form class="container"  novalidate="" runat="server" id="validar" >
  <div class="row">
    <div class="col-md-4 mb-3">
      <label for="valida1">Nombre</label>
        <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Ingrese Nombre" value="" required=""></asp:TextBox>
      
      
    </div>
    <div class="col-md-4 mb-3">
      <label for="valida2">Apellido</label>
        <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" placeholder="Ingrese Apellido" value="" required=""></asp:TextBox>
     
      
    </div>
      <div class="col-md-4 mb-3">
      <label for="valida2">Correo de Usuario</label>
        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="Ingrese Correo" value="" required=""></asp:TextBox>
     
     
    </div>
  </div>
           <div class="row">
    <div class="col-md-4 mb-3">
      <label for="valida1">Usuario</label>
        <asp:TextBox ID="txtUsuario" runat="server" class="form-control" placeholder="Ingrese Usuario" value="" required=""></asp:TextBox>
      
    </div>
    <div class="col-md-4 mb-3">
      <label for="valida2">Contraseña</label>
        <asp:TextBox ID="txtPass" runat="server" type="password" CssClass="form-control" placeholder="Ingrese Contraseña" value="" required=""></asp:TextBox>
     
    </div>
      <div class="col-md-4 mb-3">
      <label for="valida2">Repita Contraseña</label>
        <asp:TextBox ID="TextBox3" runat="server" type="password" CssClass="form-control" placeholder="Repita Contraseña" value="" required=""></asp:TextBox>
     
      
    </div>


               
  </div>
          <h6 style="text-align:center">Dirreccion</h6> 
           <div class="row">
    <div class="col-md-4 mb-3">
      <label for="valida1">Calle</label>
        <asp:TextBox ID="txtCalle" runat="server" class="form-control" placeholder="Calle" value="" required=""></asp:TextBox>
      
      
    </div>
    <div class="col-md-4 mb-3">
      <label for="valida2">Barrio</label>
        <asp:TextBox ID="txtBarrio" runat="server" CssClass="form-control" placeholder="Barrio" value="" required=""></asp:TextBox>
     
     
    </div>
      <div class="col-md-4 mb-3">
      <label for="valida2">Colonia</label>
        <asp:TextBox ID="txtColonia" runat="server" CssClass="form-control" placeholder="Colonia" value="" required=""></asp:TextBox>
     
      
    </div>
</div>
           <div class="row">
    <div class="col-md-4 mb-3">
      <label for="valida1">Pasaje</label>
        <asp:TextBox ID="txtPasaje" runat="server" class="form-control" placeholder="Pasaje" value="" required=""></asp:TextBox>
      
      
    </div>
    <div class="col-md-4 mb-3">
      <label for="valida2">Numero de Casa</label>
        <asp:TextBox ID="txtNumCasa" runat="server" CssClass="form-control" placeholder="Nº Casa" value="" required=""></asp:TextBox>
     
      
    </div>
</div>
         <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary" type="submit" OnClick="btnAceptar_Click" style="text-align:center" />
    
      </form>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/FuncionValidar.js"></script>
   </div>





</asp:Content>
