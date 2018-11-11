<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="TodosProveedoresAdmin.aspx.cs" Inherits="jgghg.PagesAdmin.TodosProveedoresAdmin" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:10% 0% 10% 0%">
        <form method="post" runat="server" class="container">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' DeleteCommand="DELETE FROM [Proveedores] WHERE [ProveedorID] = @original_ProveedorID AND [Compania] = @original_Compania AND [Departamento] = @original_Departamento AND [Ciudad] = @original_Ciudad AND [CodigoPostal] = @original_CodigoPostal AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Cell] = @original_Cell) OR ([Cell] IS NULL AND @original_Cell IS NULL)) AND [Empresa] = @original_Empresa" InsertCommand="INSERT INTO [Proveedores] ([ProveedorID], [Compania], [Departamento], [Ciudad], [CodigoPostal], [Telefono], [Cell], [Empresa]) VALUES (@ProveedorID, @Compania, @Departamento, @Ciudad, @CodigoPostal, @Telefono, @Cell, @Empresa)" SelectCommand="SELECT * FROM [Proveedores]" UpdateCommand="UPDATE [Proveedores] SET [Compania] = @Compania, [Departamento] = @Departamento, [Ciudad] = @Ciudad, [CodigoPostal] = @CodigoPostal, [Telefono] = @Telefono, [Cell] = @Cell, [Empresa] = @Empresa WHERE [ProveedorID] = @original_ProveedorID AND [Compania] = @original_Compania AND [Departamento] = @original_Departamento AND [Ciudad] = @original_Ciudad AND [CodigoPostal] = @original_CodigoPostal AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Cell] = @original_Cell) OR ([Cell] IS NULL AND @original_Cell IS NULL)) AND [Empresa] = @original_Empresa" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_ProveedorID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_Compania" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Departamento" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Ciudad" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_CodigoPostal" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="original_Telefono" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Cell" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Empresa" Type="String"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProveedorID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Compania" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Departamento" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Ciudad" Type="String"></asp:Parameter>
                    <asp:Parameter Name="CodigoPostal" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="Telefono" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Cell" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Empresa" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Compania" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Departamento" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Ciudad" Type="String"></asp:Parameter>
                    <asp:Parameter Name="CodigoPostal" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="Telefono" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Cell" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Empresa" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_ProveedorID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_Compania" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Departamento" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Ciudad" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_CodigoPostal" Type="Byte"></asp:Parameter>
                    <asp:Parameter Name="original_Telefono" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Cell" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Empresa" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" Theme="MaterialCompact" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="ProveedorID">
                <SettingsDataSecurity AllowInsert="False"></SettingsDataSecurity>

                <Columns>
                    <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="ProveedorID" ReadOnly="True" VisibleIndex="1"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Compania" VisibleIndex="2"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Departamento" VisibleIndex="3"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Ciudad" VisibleIndex="4"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CodigoPostal" VisibleIndex="5"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Telefono" VisibleIndex="6"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Cell" VisibleIndex="7"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Empresa" VisibleIndex="8"></dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>

        </form>


    </div>



</asp:Content>
