<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="RecuperarPassRoot.aspx.cs" Inherits="jgghg.PagesRoot.RecuperarPassRoot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <div style="margin:10% 0% 10% 0%">
        <form method="post" runat="server">
            <div class="row">
                <div class="col-md-10" style="text-align:center"></div>
                <h4 style="text-align:center">Recuperacion de Email</h4>
                <asp:Label ID="Label1" runat="server" Text="Ingrese un Email"></asp:Label>
                <asp:TextBox ID="txtRecuperar" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btnRecuperar" runat="server" Text="Recuperar" CssClass="btn btn-dark"/>
        </form>
    </div>

</asp:Content>
