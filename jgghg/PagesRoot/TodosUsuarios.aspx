<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="TodosUsuarios.aspx.cs" Inherits="jgghg.PagesRoot.TodosUsuarios" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:10% 0% 10% 0%">  
    <form  method="post" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT [UserName], [Nombre], [Apellido], [Correo], [CargoID] as 'Cargo', [Calle], [Barrio], [Pasaje], [NumCasa], [Municipio], [Departamento] FROM [Usuarios]"></asp:SqlDataSource>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Theme="MaterialCompact" EnableTheming="True">

            <SettingsDataSecurity AllowEdit="False" AllowInsert="False" AllowDelete="False"></SettingsDataSecurity>

            <Columns>
                <dx:GridViewDataTextColumn FieldName="UserName" VisibleIndex="0"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="1"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Apellido" VisibleIndex="2"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Correo" VisibleIndex="3"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Cargo" VisibleIndex="4"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Calle" VisibleIndex="5"></dx:GridViewDataTextColumn>

                <dx:GridViewDataTextColumn FieldName="Barrio" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Pasaje" VisibleIndex="7"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="NumCasa" VisibleIndex="8"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Municipio" VisibleIndex="9"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Departamento" VisibleIndex="10"></dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
        </form>
         </div>
</asp:Content>
