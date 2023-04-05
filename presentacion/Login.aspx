<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="presentacion.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-4">
        <div class="mb-3">
            <label class="form-label">Email: </label>
            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" Required="" />
        </div>
        <div class="mb-3">
            <label class="form-label">Password: </label>
            <asp:TextBox runat="server" ID="txtPass" CssClass="form-control" TextMode="Password" Required="" />
        </div>
        <asp:Button Text="Acceder" runat="server" ID="btnLogin" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
        <a href="/">Cancelar </a>
    </div>
</asp:Content>
