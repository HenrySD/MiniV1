<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="IngNewProducto.aspx.cs" Inherits="jgghg.PagesAdmin.IngNewProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../css/bootstrap.css" rel="stylesheet" />
    <div class="container" style="margin: 10% 0% 10% 0%; text-align:center">
        <center><h5>Agregar nuevo producto</h5>
           <h6>ingrese la imformación de los productos</h6>
       </center>
        <br />
        <form class="container" novalidate="" runat="server" id="validar">
            <div class="row">
                <div class="col-md-6 mb-3">


                    <asp:Label ID="Label3" runat="server" Text="ProductoID"></asp:Label>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT [ProductoID], [CompraID] FROM [Comprass]"></asp:SqlDataSource>

                    <asp:DropDownList ID="txtProductID" runat="server" DataSourceID="SqlDataSource2" DataTextField="ProductoID" DataValueField="CompraID" class="form-control" AutoPostBack="True" CssClass="form-control">
                    </asp:DropDownList>

                </div>
                <div class="col-md-6 mb-3">
                    <asp:Label ID="Label1" runat="server" Text="Categoria"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT [CartegoriaID], [NombreCategoria] FROM [Categorias]"></asp:SqlDataSource>
                    <asp:DropDownList ID="txtCategoria" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="NombreCategoria" DataValueField="CartegoriaID" CssClass="form-control"></asp:DropDownList>

                </div>
                <div class="col-md-6 mb-3">
                    <asp:Label ID="Label2" runat="server" Text="Seleccion Compra"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT [CompraID] FROM [Comprass]"></asp:SqlDataSource>
                    <asp:DropDownList ID="txtCompra" runat="server" DataSourceID="SqlDataSource3" DataTextField="CompraID" DataValueField="CompraID" CssClass="form-control" ReadOnly="false"></asp:DropDownList>

                </div>

            </div>


            <div class="row">
                <div class="col-md-6 mb-3">
                    <asp:Label ID="Label4" runat="server" Text="Fecha De Vencimiento"></asp:Label>
                    <asp:TextBox ID="txtDateVencimineto" runat="server" type="date" CssClass="form-control"></asp:TextBox>
                </div>
                 <div class="col-md-6 mb-3">
                     <asp:Label ID="Label5" runat="server" Text="Precio de Venta"></asp:Label>
                    <asp:TextBox ID="txtPrecioVenta" runat="server" type="text" CssClass="form-control" placeholder="Ingrese precioVenta"></asp:TextBox>
                </div>
            </div>

            <center><asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary" type="submit" OnClick="btnAgregar_Click" /></center>

        </form>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/FuncionValidar.js"></script>
    </div>

</asp:Content>
