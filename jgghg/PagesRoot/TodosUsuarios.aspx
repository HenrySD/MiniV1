<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="TodosUsuarios.aspx.cs" Inherits="jgghg.PagesRoot.TodosUsuarios" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:10% 0% 10% 0%">  
    <form  method="post" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT Usuarios.UsuarioID AS [Nº Usuario], Usuarios.Username AS [Nombres de Usuarios], Usuarios.Nombre, Usuarios.Apellido, Usuarios.Correo AS Email, Cargos.TipoCargo AS Cargo FROM Usuarios INNER JOIN Cargos ON Usuarios.CargoID = Cargos.CargoID"></asp:SqlDataSource>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Nº Usuario" Theme="MaterialCompact">

        <Settings ShowFilterRow="True"></Settings>

        <SettingsDataSecurity AllowEdit="False" AllowInsert="False" AllowDelete="False"></SettingsDataSecurity>

        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0" ShowClearFilterButton="True"></dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="N&#186; Usuario" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombres de Usuarios" VisibleIndex="2"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="3"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Apellido" VisibleIndex="4"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="5"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Cargo" VisibleIndex="6"></dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
        </form>
         </div>
</asp:Content>
