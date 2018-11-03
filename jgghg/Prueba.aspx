<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Administrador.Master" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="jgghg.Prueba" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:10% 0% 10% 0%;">
    <form id="form1" runat="server">




        
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ProductoID" Theme="MaterialCompact">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <SettingsPager Visible="False">
        </SettingsPager>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn SelectAllCheckboxMode="Page" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" ShowSelectCheckbox="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ProductoID" ReadOnly="False" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NameProducto" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProveedorID" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CategoriaID" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PrecioUnit" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnidadesStock" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>" DeleteCommand="DELETE FROM [Productos] WHERE [ProductoID] = @ProductoID" InsertCommand="INSERT INTO [Productos] ([ProductoID], [NameProducto], [ProveedorID], [CategoriaID], [PrecioUnit], [UnidadesStock]) VALUES (@ProductoID, @NameProducto, @ProveedorID, @CategoriaID, @PrecioUnit, @UnidadesStock)" SelectCommand="SELECT * FROM [Productos]" UpdateCommand="UPDATE [Productos] SET [NameProducto] = @NameProducto, [ProveedorID] = @ProveedorID, [CategoriaID] = @CategoriaID, [PrecioUnit] = @PrecioUnit, [UnidadesStock] = @UnidadesStock WHERE [ProductoID] = @ProductoID">
        <DeleteParameters>
            <asp:Parameter Name="ProductoID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductoID" Type="String" />
            <asp:Parameter Name="NameProducto" Type="String" />
            <asp:Parameter Name="ProveedorID" Type="Int32" />
            <asp:Parameter Name="CategoriaID" Type="Int32" />
            <asp:Parameter Name="PrecioUnit" Type="Decimal" />
            <asp:Parameter Name="UnidadesStock" Type="Byte" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NameProducto" Type="String" />
            <asp:Parameter Name="ProveedorID" Type="Int32" />
            <asp:Parameter Name="CategoriaID" Type="Int32" />
            <asp:Parameter Name="PrecioUnit" Type="Decimal" />
            <asp:Parameter Name="UnidadesStock" Type="Byte" />
            <asp:Parameter Name="ProductoID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</form>

    </div>
    </asp:Content>
