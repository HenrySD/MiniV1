<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="jgghg.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LoginMiniMarket</title>
    <link href="css/bootstrap.css" rel="stylesheet" />

</head>
<body>
     <div style="width:50%; margin:10% 40% 10% 35% ">
    <div class="container">
       <h1>Iniciar Session</h1>
       <form class="container"  novalidate="" runat="server" id="validar" >
  <div class="row">
    <div class="col-md-7 mb-3">
      <label for="valida1">Usuario</label>
        <asp:TextBox ID="txtUsuario" runat="server" class="form-control" placeholder="Ingrese Usuario" value="" required="" onkeypress="return isNumberOrLetter(event)"></asp:TextBox>
      
      <div class="invalid-feedback">
        Ingrese Usuario
      </div>
    </div>
    <div class="col-md-7 mb-3">
      <label for="valida2">Contrasena</label>
        <asp:TextBox ID="txtContra" runat="server" type="password" CssClass="form-control" placeholder="Ingrese contraseña" value="" required="" onkeypress="return isNumberOrLetter(event)"></asp:TextBox>
     
      <div class="invalid-feedback">
        Ingresa Contraseña
      </div>
    </div>
  </div>

           <asp:Button ID="btnAceptar" runat="server" Text="Ingresar" CssClass="btn btn-primary" type="submit" OnClick="btnAceptar_Click" />
    
      </form>
       
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/FuncionValidar.js"></script>
   </div>
</div>
</body>
</html>
