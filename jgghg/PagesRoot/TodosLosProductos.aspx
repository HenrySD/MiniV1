<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="TodosLosProductos.aspx.cs" Inherits="jgghg.PagesRoot.TodosLosProductos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:10% 0% 10% 0%">
    <form action="/" method="post" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT * FROM [Productos]">
        </asp:SqlDataSource>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ProductoID" Theme="MaterialCompact">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

            <SettingsDataSecurity AllowInsert="False"></SettingsDataSecurity>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>

            <Columns>
                <dx:GridViewDataTextColumn FieldName="ProductoID" ReadOnly="True" VisibleIndex="0"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ProveedorID" VisibleIndex="1"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CategoriaID" VisibleIndex="2"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnidadesStock" VisibleIndex="3"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CompraID" VisibleIndex="4"></dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>


    </form>
        </div>
</asp:Content>
