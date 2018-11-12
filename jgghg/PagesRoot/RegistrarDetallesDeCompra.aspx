<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="RegistrarDetallesDeCompra.aspx.cs" Inherits="jgghg.PagesRoot.RegistrarDetallesDeCompra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="../css/bootstrap.css" rel="stylesheet" />


    <div class="container" style="margin: 10% 0% 10% 0%">
        <h5 style="text-align:center">Agregar Detalles de la compra de productos a proveedores</h5>

        <form class="container" novalidate="" runat="server" id="validar">
            <div class="row">
                <div class="col-md-4 mb-3">
                    
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="DetalleID"></asp:Label>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtDetalleID" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
       
                    <asp:TextBox ID="txtDetalleID" runat="server" class="form-control" placeholder="Ingrese el numero del Detalle" value="" required=""></asp:TextBox>

                    
                </div>
                <div class="col-md-4 mb-3">

                    &nbsp;<asp:Label ID="Label2" runat="server" Text="ProductID"></asp:Label>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtProductID" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
       
                    <asp:TextBox ID="txtProductID" runat="server" CssClass="form-control" placeholder="Ingrese el numero del producto" value="" required=""></asp:TextBox>

                  
                </div>
                <div class="col-md-4 mb-3">

                    &nbsp;<asp:Label ID="Label3" runat="server" Text="Decuento"></asp:Label>
                    &nbsp;
       
           <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtDescuento" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
       
                    <asp:TextBox ID="txtDescuento" runat="server" CssClass="form-control" placeholder="Ingrese el Descuento" value="" required=""></asp:TextBox>

                    
                </div>
                <div class="col-md-4 mb-3">

                    &nbsp;<asp:Label ID="Label4" runat="server" Text="FacturaID"></asp:Label>
                    &nbsp;
       
           <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtFactura" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
       
                    <asp:TextBox ID="txtFactura" runat="server" CssClass="form-control" placeholder="ingrese el numero de la factura" value="" required=""></asp:TextBox>

                   
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label5" runat="server" Text="Fecha"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtFecha" runat="server" type="Date" CssClass="form-control"  value="" required="" ></asp:TextBox>

                  
                </div>
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label6" runat="server" Text="Total"></asp:Label>
                    &nbsp;
       
           <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtTotal" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
       
                    <asp:TextBox ID="txtTotal" runat="server"  CssClass="form-control" placeholder="Total de la compra" value="" required=""></asp:TextBox>
                </div>
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label7" runat="server" Text="CompraID"></asp:Label>
                    &nbsp;
       
           <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtCompra" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
       
                    <asp:TextBox ID="txtCompra" runat="server"  CssClass="form-control" placeholder="Ingrese el numero de la compra que a realizado" value="" required=""></asp:TextBox>
                </div>
                   
            </div>

            <%--parte de dirrecciones --%>
         
        

        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-dark" type="submit" OnClick="btnAceptar_Click" style="text-align:center"/>

        </form>
        </div>
        
        
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/FuncionValidar.js"></script>

</asp:Content>
