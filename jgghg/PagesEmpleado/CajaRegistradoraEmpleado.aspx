<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Empleado.Master" AutoEventWireup="true" CodeBehind="CajaRegistradoraEmpleado.aspx.cs" Inherits="jgghg.PagesEmpleado.CajaRegistradoraEmpleado" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../css/bootstrap.css" rel="stylesheet" />
    <div class="container" style="margin: 8% 0% 8% 0%; text-align:center">
        <form  method="post" runat="server">
            <div class="row"> 
                <div class="col-md-3 mb-3">
                    <asp:Label ID="Label1" runat="server" Text="Nº Factura"></asp:Label>
                    <asp:TextBox ID="txtnumFact" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3 mb-3">
                    <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3 mb-3">
                    <asp:Label ID="Label3" runat="server" Text="FechaVenta"></asp:Label>
                    <asp:TextBox ID="txtFecha" runat="server" type="date" CssClass="form-control"></asp:TextBox>
                </div>
                
            </div>
           

            <div class="row">
                 <div class="col-mb-3 ">
                    <asp:Label ID="Label7" runat="server" Text="Producto"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DB_A41A57_HenrySDConnectionString %>' SelectCommand="SELECT [ProductoID] FROM [Productos]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProductoID" DataValueField="ProductoID" CssClass="form-control pl-5 "></asp:DropDownList>
                </div>
                
                <div class="col-mb-3 ">
                    <asp:Label ID="Label5" runat="server" Text="PrecioVenta"></asp:Label>
                    <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control pl-5"></asp:TextBox>

                </div>
                 <div class="col-mb-3">
                    <asp:Label ID="Label6" runat="server" Text="Cantidad"></asp:Label>
                    <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control pl-5" ></asp:TextBox>

                </div>

            </div>

           
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" Theme="MaterialCompact" EnableTheming="True">
                <EditFormLayoutProperties ColCount="2" ColumnCount="2">
                    <Items>
                        <dx:GridViewColumnLayoutItem ColumnName="ID" ColSpan="1"></dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="Producto" ColSpan="1"></dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="PrecioVenta" ColSpan="1"></dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="Cantidad" ColSpan="1"></dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="Total" ColSpan="1"></dx:GridViewColumnLayoutItem>
                        <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                    </Items>
                </EditFormLayoutProperties>
                <Columns>
                        <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ShowDeleteButton="True"></dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn Name="ID" VisibleIndex="1"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Name="Producto" VisibleIndex="2"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Name="PrecioVenta" VisibleIndex="3"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Name="Cantidad" VisibleIndex="4"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Name="Total" VisibleIndex="5"></dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>

             
                
                    <asp:Button ID="Button1" runat="server" Text="Agregar Producto" CssClass="btn btn-success mt-5"/>

        </form>

    </div>

</asp:Content>
