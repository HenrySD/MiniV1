<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Empleado.Master" AutoEventWireup="true" CodeBehind="RegistrarVentas.aspx.cs" Inherits="jgghg.PagesEmpleado.RegistrarVentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
    .auto-style2 {
        left: 0px;
        top: 3px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/bootstrap.css" rel="stylesheet" />


    <div class="container" style="margin: 10% 0% 10% 0%">
        <h5 style="text-align:center">Agregar una Venta</h5>
           <h6 style="text-align:center">Ingrese los datos</h6>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <form class="container" novalidate="" runat="server" id="validar">
            <div class="row">
                <div class="col-md-4 mb-3">
                    
                    &nbsp;<asp:TextBox ID="txtDato1" runat="server" class="form-control" placeholder="Ingrese Dato1" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Dato1
                    </div>
                </div>
                <div class="col-md-4 mb-3">

                    &nbsp;<asp:TextBox ID="txtDato2" runat="server" CssClass="form-control" placeholder="Ingrese Dato2" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Dato2
                    </div>
                </div>
                <div class="col-md-4 mb-3">

                    &nbsp;<asp:TextBox ID="txtDato3" runat="server" CssClass="form-control" placeholder="Ingrese Dato3" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Dato3
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:TextBox ID="txtDato4" runat="server" class="form-control" placeholder="Ingrese Dato4" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Dato4
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    &nbsp;<asp:TextBox ID="txtDato5" runat="server"  CssClass="form-control" placeholder="Ingrese Dato5" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Dato5
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                 
                    <asp:TextBox ID="txtDato6" runat="server"  CssClass="form-control" placeholder=" Ingrese Dato6" value="" required=""></asp:TextBox>

                    <div class="invalid-feedback">
                        Agregar Dato6
                    </div>
                </div>
            </div>
           
        
<center>
        <asp:Button ID="btnVender" runat="server" Text="Vender" CssClass="btn btn-primary" type="submit" OnClick="btnVender_Click" style="text-align:center"/>
    </center>
        </form>
        </div>
        
        
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/FuncionValidar.js"></script>
   
      





</asp:Content>