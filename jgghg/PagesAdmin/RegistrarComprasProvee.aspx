<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="RegistrarComprasProvee.aspx.cs" Inherits="jgghg.PagesAdmin.RegistrarComprasProvee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/bootstrap.css" rel="stylesheet" />

    <form class="container" novalidate="" runat="server" id="validar">

        <%--parte de dirrecciones --%>

        <div class="container" style="margin: 10% 0% 10% 0%">


            <%--parte de dirrecciones --%>

            <h3 style="text-align: center">Compra de productos a los proveedores</h3>

            <div class="row">
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="IDProducto"></asp:Label>

                    <asp:TextBox ID="TextIDProducto" runat="server" CssClass="form-control" placeholder="Id producto"></asp:TextBox>
                </div>
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label11" runat="server" Text="Nombre_Del_Producto"></asp:Label>

                    <asp:TextBox ID="TextNombrePorduc" runat="server" CssClass="form-control" placeholder="Nombre de los productos que va comprar"></asp:TextBox>
                </div>
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label8" runat="server" Text="Precio Unitario"></asp:Label>
                    <asp:TextBox ID="TextProcioUnit" runat="server" CssClass="form-control" placeholder="Ingrese el Precio Unitario" required=""></asp:TextBox>
                </div>

            </div>
            <div class="row">
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="Cantidad de Productos"></asp:Label>
                    <asp:TextBox ID="TextCantidad" runat="server" CssClass="form-control" required=""></asp:TextBox>
                </div>
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label3" runat="server" Text="Decuento"></asp:Label>
                    &nbsp;
                            <asp:TextBox ID="txtDescuento" runat="server" CssClass="form-control" placeholder="Ingrese el Descuento" required="" value=""></asp:TextBox>
                </div>

                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label6" runat="server" Text="Total"></asp:Label>
                    &nbsp;
                            <asp:TextBox ID="txtTotal" runat="server" CssClass="form-control" placeholder="Total de la compra" required="" value="" ReadOnly="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="precionar el boton calcular primero" ControlToValidate="txtTotal" ValidationGroup="total"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label7" runat="server" Text="Proveedor"></asp:Label>
                    &nbsp;
                            <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Compania" DataValueField="ProveedorID" class="form-control">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>" SelectCommand="SELECT [ProveedorID], [Compania] FROM [Proveedores]"></asp:SqlDataSource>
                </div>
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label9" runat="server" Text="Fecha"></asp:Label>
                    <asp:TextBox ID="TextDateCompra" runat="server" CssClass="form-control" required="" type="Date"></asp:TextBox>
                </div>

            </div>


            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-dark mt-3" OnClick="btnAgregar_Click" ValidationGroup="total" />

            &nbsp;<asp:Button ID="Button1" runat="server" CssClass="btn btn-dark mt-3" Text="Calcular total" OnClick="Button1_Click" />

            <br />
            <br />
        </div>

    </form>



    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/FuncionValidar.js"></script>
</asp:Content>
