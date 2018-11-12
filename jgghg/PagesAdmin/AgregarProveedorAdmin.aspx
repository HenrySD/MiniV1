<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="AgregarProveedorAdmin.aspx.cs" Inherits="jgghg.PagesAdmin.AgregarProveedorAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../css/bootstrap.css" rel="stylesheet" />
    <div style="margin: 10% 0% 10% 0%; text-align:center"  class="container">
        <form  method="post" runat="server" class="container" id="validar">
       
        <h5 style="text-align:center">Agregar Nuevo Proveedor</h5>
        <div class="row">
            <div class="col-md-6 mb-2">
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtProveedorID" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtProveedorID" runat="server" placeholder="Ingrese ID" CssClass="form-control" required=""></asp:TextBox>
                
            </div>
            <div class="col-md-6 mb-2">
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtCompania" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtCompania" runat="server" placeholder="Ingrese Compania" CssClass="form-control" required=""></asp:TextBox>

            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-2">
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCiudad" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtCiudad" runat="server" placeholder="Ingrese Ciudad" CssClass="form-control" required=""></asp:TextBox>
            </div>
            <div class="col-md-6 mb-2">
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCodigoPostal" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtCodigoPostal" runat="server" placeholder="Ingrese CodigoPostal" CssClass="form-control" required=""></asp:TextBox>
            </div>
        </div>
         <div class="row">
            <div class="col-md-6 mb-2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtTelefono" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtTelefono" runat="server" placeholder="Ingrese Telefono" CssClass="form-control" required=""></asp:TextBox>
            </div>
            <div class="col-md-6 mb-2">
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCell" CssClass="auto-style2" ErrorMessage="Ingrese solo números" ValidationExpression="^[0-9]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtCell" runat="server" placeholder="Ingrese Celular" CssClass="form-control" required=""></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtEmpresa" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtEmpresa" runat="server" placeholder="Ingrese Empresa" CssClass="form-control" required=""></asp:TextBox>
            </div>
            <div class="col-md-6 mb-2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtDepa" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtDepa" runat="server" placeholder="Ingrese Departamento" CssClass="form-control" required=""></asp:TextBox>
            </div>
        </div>
        <div style="text-align:center">
            <asp:Button ID="Button1" runat="server" Text="Agregar" CssClass="btn btn-dark" OnClick="Button1_Click" style="height: 31px" required=""/>
        </div>
        
        </form> 
    </div>




</asp:Content>
