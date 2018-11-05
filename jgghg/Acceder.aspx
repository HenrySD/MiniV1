<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acceder.aspx.cs" Inherits="jgghg.Acceder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
            font-size: x-large;
        }
        .auto-style2 {
            width: 100%;
            max-width: 1140px;
            min-width: 992px;
            text-align: justify;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
    
<body onload="regresar()">
     <div style="width:50%; margin:10% 40% 10% 35% ">
    <div class="auto-style2">
        <strong>
        
        </strong>
       <form class="container"  novalidate="" runat="server" id="validar" >
           <div class="text-left">
       <h1>
           
           Iniciar Sesión</h1>
               <asp:Label ID="Error" runat="server" CssClass="auto-style1"></asp:Label>
  <div class="row">
    <div class="col-md-7 mb-3">
      <label for="valida1">Usuario</label>&nbsp;<asp:TextBox ID="txtUsuario" runat="server" class="form-control" placeholder="Ingrese Usuario" value="" required="" onkeypress="return isNumberOrLetter(event)"></asp:TextBox>
      
      <div class="invalid-feedback">
        Ingrese Usuario
      </div>
    </div>
    <div class="col-md-7 mb-3">
      <label for="valida2">Contraseña</label>
        <asp:TextBox ID="txtContra" runat="server" type="password" CssClass="form-control" placeholder="Ingrese contraseña" value="" required="" onkeypress="return isNumberOrLetter(event)"></asp:TextBox>
     
      <div class="invalid-feedback">
        Ingresa Contraseña
      </div>
    </div>
  </div>
                
           <asp:Button ID="btnAceptar" runat="server" Text="Ingresar" CssClass="btn btn-primary" type="submit" OnClick="btnAceptar_Click" />
    
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>" SelectCommand="SELECT Username, Pass,CargoID FROM Usuarios"></asp:SqlDataSource>
   
           </div>
      </form>
       
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/FuncionValidar.js"></script>

        <script type="text/javascript">
            function regresar() {
                window.location.hash = "no-back-button";
                window.location.hash = "Again-No-back-button";
                window.onhashchange=function(){window.location.hash="no-back-button";}
            }
        </script>
        
   </div>
</div>
</body>
</html>
