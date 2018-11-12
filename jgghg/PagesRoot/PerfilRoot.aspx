<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Root.Master" AutoEventWireup="true" CodeBehind="PerfilRoot.aspx.cs" Inherits="jgghg.PagesRoot.PerfilRoot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            text-align: left;
            margin-left: -15px;
            margin-right: -15px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="../css/bootstrap.css" rel="stylesheet" />
    <div style="margin: 10% 0% 10% 0%; text-align:center"  class="container">
        <form  method="post" runat="server" class="container" id="validar">
       
        <h5 style="text-align:center">Perlfil de Usuario</h5>
             <div class="auto-style2">
            <div class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                 &nbsp;<asp:TextBox ID="txtNombre" runat="server"  CssClass="form-control" ></asp:TextBox>               
            </div>
        
            <div class="auto-style1">
               <asp:Label ID="Label2" runat="server" Text="Apellido:"></asp:Label>
                &nbsp; <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
  
            <div class="auto-style1">
               <asp:Label ID="Label3" runat="server" Text="Correo:"></asp:Label>
                &nbsp; <asp:TextBox ID="txtCorreo" runat="server"  CssClass="form-control" ></asp:TextBox>
            </div>
       
            <div class="auto-style1">
             <asp:Label ID="Label4" runat="server" Text="Usuario:"></asp:Label>
             &nbsp; <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
        
            <div class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="Departamento:"></asp:Label>
            &nbsp; <asp:TextBox ID="txtDepa" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
                  
            <div class="auto-style1">
               <asp:Label ID="Label6" runat="server" Text="Municipio:"></asp:Label>
                &nbsp; <asp:TextBox ID="txtMunicipio" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            
            <div class="auto-style1">
                <asp:Label ID="Label7" runat="server" Text="Calle:"></asp:Label>
                &nbsp; <asp:TextBox ID="txtCalle" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
               
                  <div="col-md-5 mb-3">
               <asp:Label ID="Label8" runat="server" Text="Colonia:"></asp:Label>
                &nbsp; <asp:TextBox ID="txtColonia" runat="server"  CssClass="form-control" ></asp:TextBox>
           </div>
              
            <div class="auto-style1">
                <asp:Label ID="Label9" runat="server" Text="Pasaje:"></asp:Label>
                &nbsp; <asp:TextBox ID="txtPasaje" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
                       
                   <div class="auto-style1">
               <asp:Label ID="Label10" runat="server" Text="Numero de casa:"></asp:Label>
                &nbsp; <asp:TextBox ID="txtNumCasa" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
            
            <div class="auto-style1">
               <asp:Label ID="Label11" runat="server" Text="Barrio:"></asp:Label>
                <asp:TextBox ID="txtBarrio" runat="server"  CssClass="form-control" ></asp:TextBox>
            </div>
        </div>
        </form>
    </div>
</asp:Content>
