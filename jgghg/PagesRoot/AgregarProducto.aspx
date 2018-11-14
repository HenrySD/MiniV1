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
       <form class="container"  novalidate="" runat="server" id="validar" >
  <div class="row">
    <div class="col-md-6 mb-3">
      
        
      <div class="invalid-feedback">
        Agregar Nombre de producto
      </div>
        <asp:Label ID="Label3" runat="server" Text="Nombre de producto"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCompraID" DataTextField="Nombre_Producto" DataValueField="CompraID" Width="236px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceCompraID" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>" SelectCommand="SELECT [CompraID], [Nombre_Producto] FROM [Compras]"></asp:SqlDataSource>
    </div>
       <div class="col-md-6 mb-3" style="text-align:center;">
           <asp:Label ID="Label2" runat="server" Text="Categorias"></asp:Label>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT [CartegoriaID], [NombreCategoria] FROM [Categorias]"></asp:SqlDataSource>
           <asp:DropDownList ID="txtCategoria" runat="server" DataSourceID="SqlDataSource1" DataTextField="NombreCategoria" DataValueField="CartegoriaID" class="form-control" AutoPostBack="True"></asp:DropDownList>
     
      <div class="invalid-feedback">
        Agregar Categoría
      </div>
    </div>
</div>
             <div class="row">
       <div class="col-md-6 mb-3">
       
           <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextExistencia" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
       
        <asp:TextBox ID="TextExistencia" runat="server" CssClass="form-control" placeholder="Existencia de unidades" value="" required=""></asp:TextBox>
     
      <div class="invalid-feedback">
        Agregar Existencia de unidades
      </div>
    </div>
</div>

             <div class="row">
    <div class="col-md-6 mb-3" style="text-align:center;">
        <asp:Label ID="Label1" runat="server" Text="Proveedor"></asp:Label>
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT [ProveedorID], [Compania] FROM [Proveedores]"></asp:SqlDataSource>
        <asp:DropDownList ID="txtProveedor" runat="server" DataSourceID="SqlDataSource2" DataTextField="Compania" DataValueField="ProveedorID" CssClass="form-control" AutoPostBack="True"></asp:DropDownList>
      
      <div class="invalid-feedback">
        Elija un proveedor
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

        <center><asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary" type="submit" OnClick="btnAgregar_Click" /></center> 
           
      </form>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/FuncionValidar.js"></script>
   </div>
</asp:Content>
