<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Administrador.Master" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="jgghg.Pages.AgregarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <form  method="post">

        <div class="row">
            <div class="col-md-4 mb-3">
      <label for="valida1">ProductoID</label>
        <asp:TextBox ID="txtProductoID" runat="server" class="form-control" placeholder="Ingrese Nombre" value="" required=""></asp:TextBox>
      
      <div class="invalid-feedback">
        Agregar Nombre
      </div>
    </div>



        </div>



    </form>

</asp:Content>
