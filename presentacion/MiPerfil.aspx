<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="presentacion.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Pantalla de Mi Perfil</h4>
    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <label class="form-label">Email: </label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Nombre: </label>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control"/>                
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido: </label>
                <asp:TextBox runat="server" ID="txtApellido" CssClass="form-control"/>               
            </div>          
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label class="form-label">Imagen de perfil: </label>
                <input type="File" id="inputImagen" runat="server" class="form-control" />
            </div>
            <asp:Image ImageUrl="https://www.palomacornejo.com/wp-content/uploads/2021/08/no-image.jpg"
                runat="server" ID="imgNuevoPerfil" CssClass="img-fluid mb-3" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Button Text="Guardar" runat="server" ID="btnGuardar" CssClass="btn btn-primary"/>
            <a href="/">Regresar</a>
        </div>
    </div>
</asp:Content>
