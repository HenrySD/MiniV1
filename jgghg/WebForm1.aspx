<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="jgghg.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/sweetalert.css" rel="stylesheet" type="text/css"/>
    <script src="js/sweetalert.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" onserverclick="Alerta()"/>
            
        </div>
        
    </form>

    <input id="Casi" type="button" value="html" onclick="Alerta()" />
    <script type="text/javascript">
        function Alerta() {
            smal("holis");
        }
    </script>

</body>
    
</html>
