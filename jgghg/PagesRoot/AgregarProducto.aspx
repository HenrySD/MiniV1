<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="jgghg.Pages.AgregarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <link href="../css/bootstrap.css" rel="stylesheet" />
     <div class="container" style="margin:10% 0% 10% 0%">
       <center><h5>Agregar nuevo producto</h5>
           <h6>ingrese la imformación de los productos</h6>
       </center>
       <br />
         <br />
       <form class="container"  novalidate="" runat="server" id="validar" >
  <div class="row">
    <div class="col-md-6 mb-3">
      
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtNombreProducto" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
      
        <asp:TextBox ID="txtNombreProducto" runat="server" class="form-control" placeholder="Nombre del Producto" value="" required=""></asp:TextBox>
      
      <div class="invalid-feedback">
        Agregar Nombre de producto
      </div>
    </div>
       <div class="col-md-6 mb-3">
           
           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCategoria" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
           
        <asp:TextBox ID="txtCategoria" runat="server" CssClass="form-control" placeholder="Categoría" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Agregar Categoría
      </div>
    </div>
</div>
             <div class="row">
    <div class="col-md-6 mb-3">
      
        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextPrecioUnit" CssClass="auto-style2" ErrorMessage="Ingrese solo números con dos decimales" ValidationExpression="^\$?(?!0.00)(([0-9]{1,3},([0-9]{3},)*)[0-9]{3}|[0-9]{1,3})(\.[0-9]{2})?$"></asp:RegularExpressionValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextPrecioUnit" CssClass="auto-style2" ErrorMessage="Entre 0.01 y 100.00" MaximumValue="100.00" MinimumValue="0.00"></asp:RangeValidator>
      
        <asp:TextBox ID="TextPrecioUnit" runat="server" class="form-control" placeholder="Precio Unitario" value="" required=""></asp:TextBox>
      
      <div class="invalid-feedback">
        Agregar precio unitario
      </div>
    </div>
       <div class="col-md-6 mb-3">
       
           <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextExistencia" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
       
        <asp:TextBox ID="TextExistencia" runat="server" CssClass="form-control" placeholder="Existencia de unidades" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Agregar Existencia de unidades
      </div>
    </div>
</div>

             <div class="row">
    <div class="col-md-6 mb-3">
      
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextProveedor" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
      
        <asp:TextBox ID="TextProveedor" runat="server" class="form-control" placeholder="Proveedor" value="" required=""></asp:TextBox>
      
      <div class="invalid-feedback">
        Agregar proveedor
      </div>
    </div>
       <div class="col-md-6 mb-3">
       
           <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextProductoID" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
       
        <asp:TextBox ID="TextProductoID" runat="server" CssClass="form-control" placeholder="ID del producto" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Agregar identificación del producto
      </div>
    </div>
</div>

        <center><asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary" type="submit" OnClick="btnAgragar_Click" /></center> 
    
      </form>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/FuncionValidar.js"></script>
   </div>
</asp:Content>
