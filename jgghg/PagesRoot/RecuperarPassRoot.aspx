<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="RecuperarPassRoot.aspx.cs" Inherits="jgghg.PagesRoot.RecuperarPassRoot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <div style="margin:10% 0% 10% 0%">
        <form method="post" runat="server" style="margin:10% 5% 10% 5%">
            <div class="row">
                 <h4 style="text-align:center">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>" SelectCommand="SELECT [Correo], [Pass] FROM [Usuarios]"></asp:SqlDataSource>
                     Recuperacion de Contraseña</h4>
            </div>
            <div class="row">
                <div class="col-md-7 col-6" style="text-align:center"></div>
               
               
                <br />
                <asp:TextBox ID="txtRecuperar" runat="server" CssClass="form-control" placeholder="Ingrese su Correo"></asp:TextBox>
            </div>
            <div class="row">
                <br />
                <br />
               
            </div>
            <asp:Button ID="btnRecuperar" runat="server" Text="Recuperar" CssClass="btn btn-dark" OnClick="btnRecuperar_Click"/>

            <br />
            <br />
            <strong>
            <asp:Label ID="txtEnviada" runat="server" Text="" CssClass="auto-style1"></asp:Label>
            </strong>
        </form>
         
    </div>

</asp:Content>
