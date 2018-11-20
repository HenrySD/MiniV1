<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="ListaComprasProve.aspx.cs" Inherits="jgghg.PagesRoot.ListaComprasProve" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:10% 5% 10% 5%">
        <form runat="server" >
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="CompraID" Theme="MaterialCompact">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

                <SettingsDataSecurity AllowInsert="False" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                <Columns>
                    <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="CompraID" ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductoID" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Nombre_Producto" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PrecioUnit" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Cantidad" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Descuento" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Total" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProveedorID" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="DateCompra" VisibleIndex="9"></dx:GridViewDataDateColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>" SelectCommand="SELECT * FROM [Comprass]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Comprass] WHERE [CompraID] = @original_CompraID AND [ProductoID] = @original_ProductoID AND [Nombre_Producto] = @original_Nombre_Producto AND [PrecioUnit] = @original_PrecioUnit AND [Cantidad] = @original_Cantidad AND (([Descuento] = @original_Descuento) OR ([Descuento] IS NULL AND @original_Descuento IS NULL)) AND [Total] = @original_Total AND [ProveedorID] = @original_ProveedorID AND [DateCompra] = @original_DateCompra" InsertCommand="INSERT INTO [Comprass] ([ProductoID], [Nombre_Producto], [PrecioUnit], [Cantidad], [Descuento], [Total], [ProveedorID], [DateCompra]) VALUES (@ProductoID, @Nombre_Producto, @PrecioUnit, @Cantidad, @Descuento, @Total, @ProveedorID, @DateCompra)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Comprass] SET [ProductoID] = @ProductoID, [Nombre_Producto] = @Nombre_Producto, [PrecioUnit] = @PrecioUnit, [Cantidad] = @Cantidad, [Descuento] = @Descuento, [Total] = @Total, [ProveedorID] = @ProveedorID, [DateCompra] = @DateCompra WHERE [CompraID] = @original_CompraID AND [ProductoID] = @original_ProductoID AND [Nombre_Producto] = @original_Nombre_Producto AND [PrecioUnit] = @original_PrecioUnit AND [Cantidad] = @original_Cantidad AND (([Descuento] = @original_Descuento) OR ([Descuento] IS NULL AND @original_Descuento IS NULL)) AND [Total] = @original_Total AND [ProveedorID] = @original_ProveedorID AND [DateCompra] = @original_DateCompra">
                <DeleteParameters>
                    <asp:Parameter Name="original_CompraID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_ProductoID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Nombre_Producto" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_PrecioUnit" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="original_Cantidad" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_Descuento" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="original_Total" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="original_ProveedorID" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="original_DateCompra"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductoID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Nombre_Producto" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PrecioUnit" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="Cantidad" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Descuento" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="Total" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="ProveedorID" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="DateCompra"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProductoID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Nombre_Producto" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PrecioUnit" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="Cantidad" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Descuento" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="Total" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="ProveedorID" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="DateCompra"></asp:Parameter>
                    <asp:Parameter Name="original_CompraID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_ProductoID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Nombre_Producto" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_PrecioUnit" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="original_Cantidad" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_Descuento" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="original_Total" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="original_ProveedorID" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="original_DateCompra"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>


        </form>
    </div>
</asp:Content>
