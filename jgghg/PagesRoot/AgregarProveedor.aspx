<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="AgregarProveedor.aspx.cs" Inherits="jgghg.PagesRoot.AgregarProveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/bootstrap.css" rel="stylesheet" />


    <div class="container" style="margin: 10% 0% 10% 0%">
        <h5 style="text-align:center">Agregar Nuevo Proveedor</h5>
           <h6 style="text-align:center">Datos Nuevo Proveedor</h6>
        <form class="container" novalidate="" runat="server" id="validar">
            <div class="row">
                <div class="col-md-4 mb-3">
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtProveedorID" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$" Style="color: #FF0000"></asp:RegularExpressionValidator>

                    &nbsp;<asp:TextBox ID="txtProveedorID" runat="server" class="form-control" placeholder="Ingrese ProveedorID" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar ID del Proveedor
                    </div>
                </div>
                <div class="col-md-4 mb-3">

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtCompania" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$" Style="color: #FF0000"></asp:RegularExpressionValidator>

                    &nbsp;<asp:TextBox ID="txtCompania" runat="server" CssClass="form-control" placeholder="Ingrese Compania" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Compania
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDepartamento" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$" Style="color: #FF0000"></asp:RegularExpressionValidator>
                    &nbsp;<asp:TextBox ID="txtDepartamento" runat="server" CssClass="form-control" placeholder="Ingrese Departameto" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Departamento
                    </div>
                </div>
            </div>
                        <div class="row">
                <div class="col-md-4 mb-3">
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCiudad" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$" Style="color: #FF0000"></asp:RegularExpressionValidator>

                    &nbsp;<asp:TextBox ID="txtCiudad" runat="server" class="form-control" placeholder="Ingrese Ciudad" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Ciudad
                    </div>
                </div>
                <div class="col-md-4 mb-3">

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCodigoPostal" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$" Style="color: #FF0000"></asp:RegularExpressionValidator>

                    &nbsp;<asp:TextBox ID="txtCodigoPostal" runat="server" CssClass="form-control" placeholder="Ingrese CodigoPostal" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Codigo Postal
                    </div>
                </div>             
                <div class="col-md-4 mb-3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtTelefono" CssClass="auto-style2" ErrorMessage="Ingrese solo numeros" ValidationExpression="^[a-zA-Z]+$" Style="color: #FF0000"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtTelefono" runat="server" type="Number" CssClass="form-control" placeholder="Ingrese Telefono" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Telefono
                    </div>
                    </div>
                    </div>
                       <div class="row">

                         <div class="col-md-4 mb-3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtCell" CssClass="auto-style2" ErrorMessage="Ingrese solo numeros" ValidationExpression="^[a-zA-Z]+$" Style="color: #FF0000"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtCell" runat="server" type="Number" CssClass="form-control" placeholder="Ingrese Cell" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Cell
                    </div>
                </div>
                    <div class="col-md-4 mb-3">

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtDepa" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$" Style="color: #FF0000"></asp:RegularExpressionValidator>

                    &nbsp;<asp:TextBox ID="txtDepa" runat="server" CssClass="form-control" placeholder="Ingrese Departamento" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Departamento
                    </div>
                </div> 
            </div>
            <div class="row">
                
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT [CargoID], [TipoCargo] FROM [Cargos]"></asp:SqlDataSource>
    <center>
        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary" type="submit" OnClick="btnAceptar_Click" style="text-align:center"/>
        </center>
                </div>
                
            </div>
    
        </form>
        </div>
        
        
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/FuncionValidar.js"></script>
   
      





</asp:Content>