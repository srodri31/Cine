<%@ Page Title=".::Bienvenido::." Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="WebAppCine2.Inicio" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleBuscar.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            height: 25px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnlLogin" runat="server" Width="449px" CssClass="Panel">
    <table class="style5" style="position: relative; top: 0px; left: 0px; width: 330px; height: 215px;">
                        <tr class="auto-style1">
                            <td class="auto-style23">
                                                                &nbsp;</td>
                        </tr>
                        <tr class="auto-style1">
                            <td class="auto-style23">
                                                                Usuario</td>
                        </tr>
                        <tr>
                            <td class="auto-style21">
                                <asp:TextBox ID="txtUsuario" runat="server" CssClass="auto-style1" ForeColor="Black"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="auto-style1">
                            <td class="auto-style22">
                                                                Contraseña</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">
                                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" CssClass="auto-style1" ForeColor="Black"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center" class="auto-style19">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: center" class="auto-style13">
                                <asp:Button 
                                    ID="btnIngresar" runat="server" Text="Ingresar" 
                                    onclick="btnIngresar_Click" ForeColor="Black" CssClass="auto-style1" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center" class="auto-style20">
                                &nbsp;</td>
                        </tr>
                        </table>
        </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style5" style="position: relative; top: 0px; left: 0px; width: 330px; height: 215px;">
        <tr class="auto-style1">
            
                <asp:Button
                    ID="btnLogin" runat="server" Text="Login" ForeColor="Black" CssClass="auto-style1" />
                <asp:ModalPopupExtender ID="Login" runat="server" 
                                    BackgroundCssClass="FondoAplicacion" PopupControlID="pnlLogin" 
                                    TargetControlID="btnLogin" CancelControlID="btnCerrar"></asp:ModalPopupExtender>
            
            
                <asp:Button
                    ID="btnRegistro" runat="server" Text="Registro" ForeColor="Black" CssClass="auto-style1" />
            
        </tr>
    </table>
</asp:Content>
