<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="presentacion.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-4">
        <div class="mb-3">
            <label class="form-label">Email: </label>
            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" />
        </div>
        <div class="mb-3">
            <label class="form-label">Password: </label>
            <asp:TextBox runat="server" ID="txtPass" CssClass="form-control" TextMode="Password" />
        </div>
        <asp:Button Text="Registrarse" runat="server" ID="btnRegistrarse" CssClass=" btn btn-primary" />
        <a href="/">Cancelar </a>
    </div>
</asp:Content>
