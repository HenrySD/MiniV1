<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Empleado.Master" AutoEventWireup="true" CodeBehind="CajaRegistradoraEmpleado.aspx.cs" Inherits="jgghg.PagesEmpleado.CajaRegistradoraEmpleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../css/bootstrap.css" rel="stylesheet" />
    <div class="container" style="margin: 8% 0% 8% 10%; text-align:center">
        <form  method="post" runat="server">
            <div class="row"> 
                <div class="col-md-3 mb-3">
                    <asp:Label ID="Label1" runat="server" Text="Nº Factura"></asp:Label>
                    <asp:TextBox ID="txtnumFact" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3 mb-3">
                    <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3 mb-3">
                    <asp:Label ID="Label3" runat="server" Text="FechaVenta"></asp:Label>
                    <asp:TextBox ID="txtFecha" runat="server" type="date" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-mb-6 mb-3">
                    <asp:Label ID="Label4" runat="server" Text="Producto"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT [ProductoID] FROM [Productos]"></asp:SqlDataSource>
                    <asp:DropDownList ID="txtProductoID" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProductoID" DataValueField="ProductoID" CssClass="form-control"></asp:DropDownList>
                </div>
                <div class="col-mb-6 mb-3">
                    <asp:Label ID="Label5" runat="server" Text="PrecioVenta"></asp:Label>
                    <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
                 <div class="col-mb-6 mb-3">
                    <asp:Label ID="Label6" runat="server" Text="Cantidad"></asp:Label>
                    <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control"></asp:TextBox>

                </div>

            </div>

            <div class="row">
                <div class="col-md-6 mb-3 align-content-lg-center" >
                    <asp:Button ID="Button1" runat="server" Text="Agregar Producto" CssClass="mt-4"/>
                </div>
            </div>





        </form>

    </div>

</asp:Content>
