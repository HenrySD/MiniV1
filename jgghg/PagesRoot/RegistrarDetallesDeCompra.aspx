<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="RegistrarDetallesDeCompra.aspx.cs" Inherits="jgghg.PagesRoot.RegistrarDetallesDeCompra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="../css/bootstrap.css" rel="stylesheet" />
    
     <form class="container" novalidate="" runat="server" id="validar">
 
    
            

            <%--parte de dirrecciones --%>
         
        


    <div class="container" style="margin: 10% 0% 10% 0%">
       

            <%--parte de dirrecciones --%>
         
        
                
                    <h3 style="text-align:center">Compra de productos a los proveedores</h3>
                   
                        <div class="row">
                            <div class="col-md-4 mb-3">
                                &nbsp;<asp:Label ID="Label11" runat="server" Text="Nombre_Del_Producto"></asp:Label>
                                
                                <asp:TextBox ID="TextNombrePorduc" runat="server" CssClass="form-control" placeholder="Nombre de los productos que va comprar"></asp:TextBox>
                            </div>
                            <div class="col-md-4 mb-3">
                                &nbsp;<asp:Label ID="Label8" runat="server" Text="Precio Unitario"></asp:Label>
                                <asp:TextBox ID="TextProcioUnit" runat="server" CssClass="form-control" placeholder="Ingrese el Precio Unitario" required=""></asp:TextBox>
                            </div>
                            <div class="col-md-4 mb-3">
                                &nbsp;<asp:Label ID="Label9" runat="server" Text="Fecha"></asp:Label>
                                <asp:TextBox ID="TextDateCompra" runat="server" CssClass="form-control" required="" type="Date"></asp:TextBox>
                            </div>
                            <div class="col-md-4 mb-3">
                                &nbsp;<asp:Label ID="Label2" runat="server" Text="Cantidad de Productos"></asp:Label>
                                <asp:TextBox ID="TextCantidad" runat="server" CssClass="form-control" required="" ></asp:TextBox>
                            </div>
                     
                       
                        <div class="col-md-4 mb-3">
                            &nbsp;<asp:Label ID="Label3" runat="server" Text="Decuento"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="txtDescuento" runat="server" CssClass="form-control" placeholder="Ingrese el Descuento" required="" value=""></asp:TextBox>
                        </div>
                        <div class="col-md-4 mb-3">
                            &nbsp;<asp:Label ID="Label4" runat="server" Text="FacturaID"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="txtFactura" runat="server" CssClass="form-control" placeholder="ingrese el numero de la factura" required="" value=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 mb-3">
                            &nbsp;<asp:Label ID="Label6" runat="server" Text="Total"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="txtTotal" runat="server" CssClass="form-control" placeholder="Total de la compra" ReadOnly="True" required="" value=""></asp:TextBox>
                        </div>
                        <div class="col-md-4 mb-3">
                            &nbsp;<asp:Label ID="Label7" runat="server" Text="Proveedor"></asp:Label>
                            &nbsp;
                            <br />
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Compania" DataValueField="ProveedorID" Width="170px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>" SelectCommand="SELECT [ProveedorID], [Compania] FROM [Proveedores]"></asp:SqlDataSource>
                        </div>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="DetalleCompra" runat="server" CssClass="btn btn-dark" OnClick="DetalleCompra_Click" Text="AgregarCompra" style="height: 31px" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Calcular_Total_Descuento" runat="server" CssClass="btn btn-dark" Text="Calcular total con decuento" OnClick="Calcular_Total_Descuento_Click" Width="214px" />
                    </div>
           
            <br />
            <br />
        </div>
       
        </form>
        
        
        
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/FuncionValidar.js"></script>
</asp:Content>
