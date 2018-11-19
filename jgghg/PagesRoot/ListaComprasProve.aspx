<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="ListaComprasProve.aspx.cs" Inherits="jgghg.PagesRoot.ListaComprasProve" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:10% 5% 10% 5%">
        <form runat="server" >
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' DeleteCommand="DELETE FROM [Compras] WHERE [CompraID] = @original_CompraID AND [PrecioUnit] = @original_PrecioUnit AND [Fecha_Compra] = @original_Fecha_Compra AND [Cantidad] = @original_Cantidad AND [ProveedorID] = @original_ProveedorID" InsertCommand="INSERT INTO [Compras] ([PrecioUnit], [Fecha_Compra], [Cantidad], [ProveedorID]) VALUES (@PrecioUnit, @Fecha_Compra, @Cantidad, @ProveedorID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Compras]" UpdateCommand="UPDATE [Compras] SET [PrecioUnit] = @PrecioUnit, [Fecha_Compra] = @Fecha_Compra, [Cantidad] = @Cantidad, [ProveedorID] = @ProveedorID WHERE [CompraID] = @original_CompraID AND [PrecioUnit] = @original_PrecioUnit AND [Fecha_Compra] = @original_Fecha_Compra AND [Cantidad] = @original_Cantidad AND [ProveedorID] = @original_ProveedorID">
                <DeleteParameters>
                    <asp:Parameter Name="original_CompraID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_PrecioUnit" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="original_Fecha_Compra"></asp:Parameter>
                    <asp:Parameter Name="original_Cantidad" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="original_ProveedorID" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PrecioUnit" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="Fecha_Compra"></asp:Parameter>
                    <asp:Parameter Name="Cantidad" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="ProveedorID" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PrecioUnit" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="Fecha_Compra"></asp:Parameter>
                    <asp:Parameter Name="Cantidad" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="ProveedorID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_CompraID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_PrecioUnit" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="original_Fecha_Compra"></asp:Parameter>
                    <asp:Parameter Name="original_Cantidad" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="original_ProveedorID" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <h1>Lista de compras al Proveedor</h1>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="CompraID" Theme="MaterialCompact">
                <Columns>
                    <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="CompraID" ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PrecioUnit" VisibleIndex="2"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="Fecha_Compra" VisibleIndex="3"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="Cantidad" VisibleIndex="4"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProveedorID" VisibleIndex="5"></dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>

            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' DeleteCommand="DELETE FROM [DetallesCompras] WHERE [DetalleID] = @original_DetalleID AND [ProductoID] = @original_ProductoID AND [Descuento] = @original_Descuento AND [FacturaID] = @original_FacturaID AND [Fecha] = @original_Fecha AND [Total] = @original_Total AND [CompraID] = @original_CompraID" InsertCommand="INSERT INTO [DetallesCompras] ([ProductoID], [Descuento], [FacturaID], [Fecha], [Total], [CompraID]) VALUES (@ProductoID, @Descuento, @FacturaID, @Fecha, @Total, @CompraID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [DetallesCompras]" UpdateCommand="UPDATE [DetallesCompras] SET [ProductoID] = @ProductoID, [Descuento] = @Descuento, [FacturaID] = @FacturaID, [Fecha] = @Fecha, [Total] = @Total, [CompraID] = @CompraID WHERE [DetalleID] = @original_DetalleID AND [ProductoID] = @original_ProductoID AND [Descuento] = @original_Descuento AND [FacturaID] = @original_FacturaID AND [Fecha] = @original_Fecha AND [Total] = @original_Total AND [CompraID] = @original_CompraID">
                <DeleteParameters>
                    <asp:Parameter Name="original_DetalleID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_ProductoID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Descuento" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="original_FacturaID" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="original_Fecha"></asp:Parameter>
                    <asp:Parameter Name="original_Total" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="original_CompraID" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductoID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Descuento" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="FacturaID" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="Fecha"></asp:Parameter>
                    <asp:Parameter Name="Total" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="CompraID" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProductoID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Descuento" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="FacturaID" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="Fecha"></asp:Parameter>
                    <asp:Parameter Name="Total" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="CompraID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_DetalleID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_ProductoID" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Descuento" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="original_FacturaID" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="original_Fecha"></asp:Parameter>
                    <asp:Parameter Name="original_Total" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="original_CompraID" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
<h1> Lista de detalles de compra</h1>
            <dx:ASPxGridView ID="ASPxGridView2" runat="server" Theme="MaterialCompact" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableTheming="True" KeyFieldName="DetalleID">
                <SettingsDataSecurity AllowInsert="False"></SettingsDataSecurity>

                <Columns>
                    <dx:GridViewCommandColumn ShowDeleteButton="True" VisibleIndex="0" ShowEditButton="True"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="DetalleID" ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductoID" VisibleIndex="2"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Descuento" VisibleIndex="3"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="FacturaID" VisibleIndex="4"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="Fecha" VisibleIndex="5"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="Total" VisibleIndex="6"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CompraID" VisibleIndex="7"></dx:GridViewDataTextColumn>

                </Columns>
            </dx:ASPxGridView>




        </form>
    </div>
</asp:Content>
