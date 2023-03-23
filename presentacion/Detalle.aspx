<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="presentacion.Detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> Pantalla de detalle </h2>
    <asp:GridView runat="server" ID="dgvArticulos" CssClass="table" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" /> 
            <asp:BoundField HeaderText="Código" DataField="Codigo" /> 
            <asp:BoundField HeaderText="Marca" DataField="Marca.Descripcion" />
            <asp:BoundField HeaderText="Categoría" DataField="Categoria.Descripcion"/>
            <asp:BoundField HeaderText="Precio" DataField="Precio" />
            <asp:CommandField HeaderText="ABM" ShowSelectButton="true" SelectText="✏️"/>
        </Columns>
    </asp:GridView>
    <a href="AltaBajaModificar.Aspx" class="btn btn-primary"> Agregar </a>
</asp:Content>
