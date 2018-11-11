<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="AgregarUsuariosAdmin.aspx.cs" Inherits="jgghg.PagesAdmin.AgregarUsuariosAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="margin: 10% 0% 10% 0%">
        <h5 style="text-align:center">Agregar Nuevo Usuario</h5>
           <h6 style="text-align:center">Datos Nuevo Usuario</h6>
        <form class="container" novalidate="" runat="server" id="validar">
            <div class="row">
                <div class="col-md-4 mb-3">
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtNombre" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$" Style="color: #FF0000"></asp:RegularExpressionValidator>
                    
                    &nbsp;<asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Ingrese Nombre" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Nombre
                    </div>
                </div>
                <div class="col-md-4 mb-3">

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtApellido" CssClass="auto-style2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[a-zA-Z]+$" Style="color: #FF0000"></asp:RegularExpressionValidator>

                    &nbsp;<asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" placeholder="Ingrese Apellido" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Apellido
                    </div>
                </div>
                <div class="col-md-4 mb-3">

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtCorreo" CssClass="auto-style2" ErrorMessage="Ingrese un correo válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Style="color: #FF0000"></asp:RegularExpressionValidator>

                    &nbsp;<asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="Ingrese Correo" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Correo
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="Ingrese Usuario" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Usuario
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:TextBox ID="txtPass" runat="server" type="password" CssClass="form-control" placeholder="Ingrese Contraseña" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Contraseña
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPassRe" CssClass="auto-style1" ErrorMessage="Las conraseñas no coinciden"></asp:CompareValidator>
                    <asp:TextBox ID="txtPassRe" runat="server" type="password" CssClass="form-control" placeholder="Repita Contraseña" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        No Coinciden las Contraseñas
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-3">
                    <asp:Label ID="Label1" runat="server" Text="Tipo de Usuario"></asp:Label>
                    <asp:DropDownList ID="txtCargo" runat="server" DataSourceID="SqlDataSource1" DataTextField="TipoCargo" DataValueField="CargoID" CssClass="form-control"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="select * from Cargos where CargoID > 1"></asp:SqlDataSource>
                </div>
                
            </div>

            <%--parte de dirrecciones --%>
            <h6 style="text-align:center">Dirrección</h6>
            <div class="row">
    <div class="col-md-4 mb-3">
        &nbsp;<asp:TextBox ID="txtDepartamento" runat="server" CssClass="form-control" placeholder="Departamento" value="" required=""></asp:TextBox>
        <div class="invalid-feedback">
                    Ingrese Departamento
                </div>
        
    </div>
    <div class="col-md-4 mb-3">
        &nbsp;<asp:TextBox ID="txtMunicipio" runat="server" CssClass="form-control" placeholder="Municipio" value="" required=""></asp:TextBox>
        <div class="invalid-feedback">
                    Ingrese Municipio
                </div>
    </div>

                <div class="col-md-4 mb-3">
                &nbsp;<asp:TextBox ID="txtCalle" runat="server" class="form-control" placeholder="Calle" value=""></asp:TextBox>

                
            </div>
                
        </div>
        <div class="row">
            
            
            <div class="col-md-4 mb-3">
                &nbsp;<asp:TextBox ID="txtColonia" runat="server" CssClass="form-control" placeholder="Colonia" value="" required=""></asp:TextBox>

                <div class="invalid-feedback">
                    Ingrese Colonia
                </div>
            </div>
            <div class="col-md-4 mb-3">
                &nbsp;<asp:TextBox ID="txtPasaje" runat="server" class="form-control" placeholder="Pasaje" value=""></asp:TextBox>

                
            </div>
            <div class="col-md-4 mb-3">
                &nbsp;<asp:TextBox ID="txtNumCasa" runat="server" CssClass="form-control" placeholder="Nº Casa" value="" required=""></asp:TextBox>

                <div class="invalid-feedback">
                    Ingrese N° Casa
                </div>
            </div>
        </div>
    
            <div class="row">

                <div class="col-md-4 mb-3">
                &nbsp;<asp:TextBox ID="txtBarrio" runat="server" CssClass="form-control" placeholder="Barrio" value=""></asp:TextBox>

                <div class="invalid-feedback">
                    Campo Vacio
                </div>
            </div>
            </div>
         
        

        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary" type="submit" OnClick="btnAceptar_Click" style="text-align:center"/>

        </form>
        </div>
        




</asp:Content>
