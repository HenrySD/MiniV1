<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="TodosUsuarios.aspx.cs" Inherits="jgghg.PagesRoot.TodosUsuarios" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:10% 0% 10% 0%">  
    <form  method="post" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT * FROM [Usuarios]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Usuarios] WHERE [UsuarioID] = @original_UsuarioID AND [UserName] = @original_UserName AND [Pass] = @original_Pass AND [Nombre] = @original_Nombre AND [Apellido] = @original_Apellido AND [Correo] = @original_Correo AND [CargoID] = @original_CargoID AND [Calle] = @original_Calle AND (([Barrio] = @original_Barrio) OR ([Barrio] IS NULL AND @original_Barrio IS NULL)) AND [Colonia] = @original_Colonia AND (([Pasaje] = @original_Pasaje) OR ([Pasaje] IS NULL AND @original_Pasaje IS NULL)) AND [NumCasa] = @original_NumCasa AND [Municipio] = @original_Municipio AND [Departamento] = @original_Departamento" InsertCommand="INSERT INTO [Usuarios] ([UserName], [Pass], [Nombre], [Apellido], [Correo], [CargoID], [Calle], [Barrio], [Colonia], [Pasaje], [NumCasa], [Municipio], [Departamento]) VALUES (@UserName, @Pass, @Nombre, @Apellido, @Correo, @CargoID, @Calle, @Barrio, @Colonia, @Pasaje, @NumCasa, @Municipio, @Departamento)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Usuarios] SET [UserName] = @UserName, [Pass] = @Pass, [Nombre] = @Nombre, [Apellido] = @Apellido, [Correo] = @Correo, [CargoID] = @CargoID, [Calle] = @Calle, [Barrio] = @Barrio, [Colonia] = @Colonia, [Pasaje] = @Pasaje, [NumCasa] = @NumCasa, [Municipio] = @Municipio, [Departamento] = @Departamento WHERE [UsuarioID] = @original_UsuarioID AND [UserName] = @original_UserName AND [Pass] = @original_Pass AND [Nombre] = @original_Nombre AND [Apellido] = @original_Apellido AND [Correo] = @original_Correo AND [CargoID] = @original_CargoID AND [Calle] = @original_Calle AND (([Barrio] = @original_Barrio) OR ([Barrio] IS NULL AND @original_Barrio IS NULL)) AND [Colonia] = @original_Colonia AND (([Pasaje] = @original_Pasaje) OR ([Pasaje] IS NULL AND @original_Pasaje IS NULL)) AND [NumCasa] = @original_NumCasa AND [Municipio] = @original_Municipio AND [Departamento] = @original_Departamento">
            <DeleteParameters>
                <asp:Parameter Name="original_UsuarioID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_UserName" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Pass" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Nombre" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Apellido" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Correo" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_CargoID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_Calle" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Barrio" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Colonia" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Pasaje" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_NumCasa" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Municipio" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Departamento" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
                <asp:Parameter Name="Pass" Type="String"></asp:Parameter>
                <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
                <asp:Parameter Name="Apellido" Type="String"></asp:Parameter>
                <asp:Parameter Name="Correo" Type="String"></asp:Parameter>
                <asp:Parameter Name="CargoID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Calle" Type="String"></asp:Parameter>
                <asp:Parameter Name="Barrio" Type="String"></asp:Parameter>
                <asp:Parameter Name="Colonia" Type="String"></asp:Parameter>
                <asp:Parameter Name="Pasaje" Type="String"></asp:Parameter>
                <asp:Parameter Name="NumCasa" Type="String"></asp:Parameter>
                <asp:Parameter Name="Municipio" Type="String"></asp:Parameter>
                <asp:Parameter Name="Departamento" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
                <asp:Parameter Name="Pass" Type="String"></asp:Parameter>
                <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
                <asp:Parameter Name="Apellido" Type="String"></asp:Parameter>
                <asp:Parameter Name="Correo" Type="String"></asp:Parameter>
                <asp:Parameter Name="CargoID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Calle" Type="String"></asp:Parameter>
                <asp:Parameter Name="Barrio" Type="String"></asp:Parameter>
                <asp:Parameter Name="Colonia" Type="String"></asp:Parameter>
                <asp:Parameter Name="Pasaje" Type="String"></asp:Parameter>
                <asp:Parameter Name="NumCasa" Type="String"></asp:Parameter>
                <asp:Parameter Name="Municipio" Type="String"></asp:Parameter>
                <asp:Parameter Name="Departamento" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_UsuarioID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_UserName" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Pass" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Nombre" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Apellido" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Correo" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_CargoID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_Calle" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Barrio" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Colonia" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Pasaje" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_NumCasa" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Municipio" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Departamento" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Theme="MaterialCompact" EnableTheming="True" KeyFieldName="UsuarioID">

            <SettingsDataSecurity AllowInsert="False"></SettingsDataSecurity>

            <Columns>
                <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="UsuarioID" VisibleIndex="1" ReadOnly="True">
                    <EditFormSettings Visible="False"></EditFormSettings>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UserName" VisibleIndex="2"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Pass" VisibleIndex="3"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="4"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Apellido" VisibleIndex="5"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Correo" VisibleIndex="6"></dx:GridViewDataTextColumn>

                <dx:GridViewDataTextColumn FieldName="CargoID" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Calle" VisibleIndex="8"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Barrio" VisibleIndex="9"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Colonia" VisibleIndex="10"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Pasaje" VisibleIndex="11"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="NumCasa" VisibleIndex="12"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Municipio" VisibleIndex="13"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Departamento" VisibleIndex="14"></dx:GridViewDataTextColumn>
            </Columns>
    </dx:ASPxGridView>
        </form>
         </div>
</asp:Content>
