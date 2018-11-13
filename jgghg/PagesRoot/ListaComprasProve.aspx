<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="ListaComprasProve.aspx.cs" Inherits="jgghg.PagesRoot.ListaComprasProve" %>
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


        </form>
    </div>
</asp:Content>
