<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Empleado.Master" AutoEventWireup="true" CodeBehind="BuscarProducto.aspx.cs" Inherits="jgghg.PagesEmpleado.BuscarProducto" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div style="margin:10% 5% 10% 5%">
        <form runat="server" >
      <asp:Label runat="server" Text="Buscar:"></asp:Label>
      <asp:TextBox runat="server"></asp:TextBox>
<asp:TextBox runat="server"></asp:TextBox>
<asp:SqlDataSource runat="server"></asp:SqlDataSource>
<dx:ASPxGridView runat="server"></dx:ASPxGridView>




        </form>
    </div>

</asp:Content>
