<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="TodosLosProductos.aspx.cs" Inherits="jgghg.PagesRoot.TodosLosProductos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:10% 0% 10% 0%">
    <form action="/" method="post" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT * FROM [Productos]" DeleteCommand="DELETE FROM [Productos] WHERE [ProductoID] = @ProductoID" InsertCommand="INSERT INTO [Productos] ([ProductoID], [NameProducto], [ProveedorID], [CategoriaID], [PrecioUnit], [UnidadesStock]) VALUES (@ProductoID, @NameProducto, @ProveedorID, @CategoriaID, @PrecioUnit, @UnidadesStock)" UpdateCommand="UPDATE [Productos] SET [NameProducto] = @NameProducto, [ProveedorID] = @ProveedorID, [CategoriaID] = @CategoriaID, [PrecioUnit] = @PrecioUnit, [UnidadesStock] = @UnidadesStock WHERE [ProductoID] = @ProductoID">
            <DeleteParameters>
                <asp:Parameter Name="ProductoID" Type="String"></asp:Parameter>
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
                <asp:Parameter Name="ProductoID" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ProductoID" Theme="MaterialCompact">
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
