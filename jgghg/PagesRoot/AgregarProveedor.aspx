<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="AgregarProveedor.aspx.cs" Inherits="jgghg.PagesRoot.AgregarProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="../css/bootstrap.css" rel="stylesheet" />
    <div style="margin: 10% 0% 10% 0%; text-align:center"  class="container">
        <form  method="post" runat="server" class="container">
       
        <h5 style="text-align:center">Agregar Nuevo Proveedor</h5>
        <div class="row">
            <div class="col-md-5 mb-2">
                <asp:TextBox ID="txtProveedorID" runat="server" placeholder="Ingrese ID" CssClass="form-control"></asp:TextBox>
                
            </div>
            <div class="col-md-5 mb-2">
                <asp:TextBox ID="txtCompania" runat="server" placeholder="Ingrese Compania" CssClass="form-control"></asp:TextBox>

            </div>
        </div>
        <div class="row">
            <div class="col-md-5 mb-2">
                <asp:TextBox ID="txtCiudad" runat="server" placeholder="Ingrese Ciudad" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-5 mb-2">
                <asp:TextBox ID="txtCodigoPostal" runat="server" placeholder="Ingrese CodigoPostal" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
         <div class="row">
            <div class="col-md-5 mb-2">
                <asp:TextBox ID="txtTelefono" runat="server" placeholder="Ingrese Telefono" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-5 mb-2">
                <asp:TextBox ID="txtCell" runat="server" placeholder="Ingrese Celular" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-5 mb-2">
                <asp:TextBox ID="txtEmpresa" runat="server" placeholder="Ingrese Empresa" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-5 mb-2">
                <asp:TextBox ID="txtDepa" runat="server" placeholder="Ingrese Empresa" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div style="text-align:center">
            <asp:Button ID="Button1" runat="server" Text="Agregar" CssClass="btn btn-dark" OnClick="Button1_Click"/>
        </div>
        
        </form>
    </div>

</asp:Content>
