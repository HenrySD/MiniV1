<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="RegistrarDetallesDeCompra.aspx.cs" Inherits="jgghg.PagesRoot.RegistrarDetallesDeCompra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="../css/bootstrap.css" rel="stylesheet" />
    
    <form class="container" novalidate="" runat="server" id="validar">
        <div class="container" style="margin: 10% 0% 10% 0%">
 
        <h5 style="text-align:center">Agregar Compra que va realizar al proveedor</h5>
    
            <div class="row">
                <div class="col-md-4 mb-3">

                    &nbsp;<asp:TextBox ID="TextProcioUnit" placeholder="Ingrese el Precio Unitario" runat="server" CssClass="form-control"></asp:TextBox>

                  
                </div>
                <div class="col-md-4 mb-3">

                    &nbsp;<asp:TextBox ID="TextDateCompra" type="Date" runat="server" CssClass="form-control"></asp:TextBox>

                  
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:TextBox ID="TextCantidad"  placeholder="ingrese la Cantidad" runat="server" CssClass="form-control"></asp:TextBox>

                  
                </div>
                
                    <div class="col-md-4 mb-3">
                    <asp:TextBox ID="TextProveedorID"  placeholder="ingrese con el numero que se identifico el Proveedor" runat="server" CssClass="form-control"></asp:TextBox>


                  
                    <br />
                    <asp:Button ID="compra" runat="server" CssClass="btn btn-dark" Text="Agregar La Compra" OnClick="compra_Click" />


                  
                </div>
            </div>

            <%--parte de dirrecciones --%>
         
        
        </div>


    <div class="container" style="margin: 10% 0% 10% 0%">
        <h5 style="text-align:center">Agregar Detalles de la compra de productos a proveedores</h5>

        
            <div class="row">
                <div class="col-md-4 mb-3">

                    &nbsp;<asp:Label ID="Label2" runat="server" Text="ProductID"></asp:Label>
       
                    <asp:TextBox ID="txtProductID" runat="server" CssClass="form-control" placeholder="Ingrese el numero del producto" value="" ></asp:TextBox>

                  
                </div>
                <div class="col-md-4 mb-3">

                    &nbsp;<asp:Label ID="Label3" runat="server" Text="Decuento"></asp:Label>
                    &nbsp;
       
       
                    <asp:TextBox ID="txtDescuento" runat="server" CssClass="form-control" placeholder="Ingrese el Descuento" value="" ></asp:TextBox>

                    
                </div>
                <div class="col-md-4 mb-3">

                    &nbsp;<asp:Label ID="Label4" runat="server" Text="FacturaID"></asp:Label>
                    &nbsp;
       
       
                    <asp:TextBox ID="txtFactura" runat="server" CssClass="form-control" placeholder="ingrese el numero de la factura" value="" ></asp:TextBox>

                   
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label5" runat="server" Text="Fecha"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtFecha" runat="server" type="Date" CssClass="form-control"  value="" ></asp:TextBox>

                  
                </div>
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label6" runat="server" Text="Total"></asp:Label>
                    &nbsp;
       
       
                    <asp:TextBox ID="txtTotal" runat="server"  CssClass="form-control" placeholder="Total de la compra" value="" ></asp:TextBox>
                </div>
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:Label ID="Label7" runat="server" Text="CompraID"></asp:Label>
                    &nbsp;
       
       
                    <asp:TextBox ID="txtCompra" runat="server"  CssClass="form-control" placeholder="Ingrese el numero de la compra que a realizado" value="" ></asp:TextBox>
                </div>
                   
                <asp:Button ID="DetalleCompra" runat="server" OnClick="DetalleCompra_Click" Text="AgregarDetalles" />
            </div>

            <%--parte de dirrecciones --%>
        </div>
        </form>
        
        
        
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/FuncionValidar.js"></script>

</asp:Content>
