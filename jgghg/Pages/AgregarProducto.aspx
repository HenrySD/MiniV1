<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Administrador.Master" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="jgghg.Pages.AgregarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <link href="../css/bootstrap.css" rel="stylesheet" />
     <div class="container" style="margin:10% 0% 10% 0%">
       <center><h5>Agregar nuevo producto</h5>
           <h6>ingrese la imformacion de los productos</h6>
       </center>
       <br />
         <br />
       <form class="container"  novalidate="" runat="server" id="validar" >
  <div class="row">
    <div class="col-md-6 mb-3">
      
        <asp:TextBox ID="txtNombreProducto" runat="server" class="form-control" placeholder="Nombre del Producto" value="" required=""></asp:TextBox>
      
      <div class="invalid-feedback">
        Agregar nombre de producto
      </div>
    </div>
       <div class="col-md-6 mb-3">
           
        <asp:TextBox ID="txtCategoria" runat="server" CssClass="form-control" placeholder="Categoria" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Agregar Categoria
      </div>
    </div>
</div>
             <div class="row">
    <div class="col-md-6 mb-3">
      
        <asp:TextBox ID="TextPrecioUnit" runat="server" class="form-control" placeholder="Precio Unitario" value="" required=""></asp:TextBox>
      
      <div class="invalid-feedback">
        Agregar precio unitario
      </div>
    </div>
       <div class="col-md-6 mb-3">
       
        <asp:TextBox ID="TextExistencia" runat="server" CssClass="form-control" placeholder="Existencia de unidades" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Agregar Existencia de unidades
      </div>
    </div>
</div>

             <div class="row">
    <div class="col-md-6 mb-3">
      
        <asp:TextBox ID="TextProveedor" runat="server" class="form-control" placeholder="Proveedor" value="" required=""></asp:TextBox>
      
      <div class="invalid-feedback">
        Agregar proveedor
      </div>
    </div>
       <div class="col-md-6 mb-3">
       
        <asp:TextBox ID="TextProductoID" runat="server" CssClass="form-control" placeholder="ID del producto" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Agregar identificacion del producto
      </div>
    </div>
</div>

        <center><asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary" type="submit" OnClick="btnAgragar_Click" /></center> 
    
      </form>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/FuncionValidar.js"></script>
   </div>
</asp:Content>
