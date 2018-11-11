<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="TodosLosProductos.aspx.cs" Inherits="jgghg.PagesAdmin.TodosLosProductos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin: 10% 0% 10% 0%">
        <form action="/" method="post" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' DeleteCommand="DELETE FROM [Productos] WHERE [ProductoID] = @original_ProductoID AND [NameProducto] = @original_NameProducto AND (([ProveedorID] = @original_ProveedorID) OR ([ProveedorID] IS NULL AND @original_ProveedorID IS NULL)) AND (([CategoriaID] = @original_CategoriaID) OR ([CategoriaID] IS NULL AND @original_CategoriaID IS NULL)) AND [PrecioUnit] = @original_PrecioUnit AND [UnidadesStock] = @original_UnidadesStock" InsertCommand="INSERT INTO [Productos] ([ProductoID], [NameProducto], [ProveedorID], [CategoriaID], [PrecioUnit], [UnidadesStock]) VALUES (@ProductoID, @NameProducto, @ProveedorID, @CategoriaID, @PrecioUnit, @UnidadesStock)" SelectCommand="SELECT * FROM [Productos]" UpdateCommand="UPDATE [Productos] SET [NameProducto] = @NameProducto, [ProveedorID] = @ProveedorID, [CategoriaID] = @CategoriaID, [PrecioUnit] = @PrecioUnit, [UnidadesStock] = @UnidadesStock WHERE [ProductoID] = @original_ProductoID AND [NameProducto] = @original_NameProducto AND (([ProveedorID] = @original_ProveedorID) OR ([ProveedorID] IS NULL AND @original_ProveedorID IS NULL)) AND (([CategoriaID] = @original_CategoriaID) OR ([CategoriaID] IS NULL AND @original_CategoriaID IS NULL)) AND [PrecioUnit] = @original_PrecioUnit AND [UnidadesStock] = @original_UnidadesStock" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_ProductoID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_NameProducto" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_ProveedorID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_CategoriaID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_PrecioUnit" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="original_UnidadesStock" Type="Byte"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductoID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="NameProducto" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ProveedorID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="CategoriaID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="PrecioUnit" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="UnidadesStock" Type="Byte"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NameProducto" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ProveedorID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="CategoriaID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="PrecioUnit" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="UnidadesStock" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="original_ProductoID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_NameProducto" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_ProveedorID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_CategoriaID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_PrecioUnit" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="original_UnidadesStock" Type="Byte"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ProductoID" Theme="Youthful">
                <SettingsDataSecurity AllowInsert="False"></SettingsDataSecurity>

                <Columns>
                    <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductoID" ReadOnly="True" VisibleIndex="1"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="NameProducto" VisibleIndex="2"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProveedorID" VisibleIndex="3"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CategoriaID" VisibleIndex="4"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PrecioUnit" VisibleIndex="5"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnidadesStock" VisibleIndex="6"></dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
        </form>
    </div>
</asp:Content>
