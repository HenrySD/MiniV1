<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="CategoriasProductos.aspx.cs" Inherits="jgghg.PagesRoot.CategoriasProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="margin:10% 0% 10% 0%">
    <form action="/" method="post" runat="server">
    <%--<div class="row">
        <div class="col-md-6 mb-3">
            <asp:TextBox ID="txtNombreCategoria" runat="server" class="form-control" placeholder="Ingrese nombre Categoria" value="" required=""></asp:TextBox>
        </div>
        <div class="col-md-6 mb-3">
            <asp:TextBox ID="txtDescripcion" runat="server" class="form-control" placeholder="Ingrese nombre Categoria" value="" required=""></asp:TextBox>
        </div>
    </div>--%>
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar Datos" CssClass="btn btn-primary" OnClick="btnGuardar_Click" />
    </form>
        </div>

    <script type="text/javascript">
        function btnGuardar_Click {
            swall("Todo Bien", "Contenido del mensaje", "Success");
        }

    </script>


</asp:Content>
