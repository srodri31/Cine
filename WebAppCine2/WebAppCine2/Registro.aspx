<%@ Page Title=".::Registro::." Language="C#"  MasterPageFile="~/Registro.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebAppCine2.Registro" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
        .auto-style4 {
            color: #000000;
            text-align: left;
        }
        .auto-style26 {
            text-align: left;
            width: 370px;
        }
        .auto-style27 {
            text-align: left;
            width: 359px;
        }
        .auto-style28 {
            color: #000000;
            text-align: left;
            width: 178px;
        }
        .auto-style29 {
            color: #000000;
            text-align: left;
            width: 193px;
        }
        .auto-style7 {
            color: #000000;
            width: 185px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table class="style7">
        <tr>
            <td class="auto-style7" colspan="4"><h1>Registro</h1></td>
        </tr>
        <tr>
            <td class="auto-style28">Identificación*</td>
            <td class="auto-style27">
                <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvIdentificacion" runat="server" 
                    ControlToValidate="txtCedula" ErrorMessage="Campo Obligatorio" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style29">Genero*</td>
            <td class="auto-style26">
                <asp:DropDownList ID="txtSexo" runat="server" Height="22px" Width="128px">
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvSexo" runat="server" 
                    ControlToValidate="txtSexo" ErrorMessage="Campo Obligatorio" ForeColor="Black" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">Nombre(s)*</td>
            <td class="auto-style27">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" 
                    ControlToValidate="txtNombre" ErrorMessage="Campo Obligatorio" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style29">Fecha de Nacimiento*</td>
            
            <td class="auto-style26">
                <asp:TextBox ID="txtFechaN" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="Calendar" runat="server" TargetControlID="txtFechaN" 
                    Format="yyyy/MM/dd"> </asp:CalendarExtender>

                <asp:RequiredFieldValidator ID="rfvFechaN" runat="server" 
                    ControlToValidate="txtFechaN" ErrorMessage="Campo Obligatorio" ForeColor="Black" CssClass="auto-style4"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td class="auto-style28">Apellidos*</td>
            <td class="auto-style27">
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvApellido" runat="server" 
                    ControlToValidate="txtApellido" ErrorMessage="Campo Obligatorio" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style29">Correo Electronico*</td>
            <td class="auto-style26">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revCorreo" runat="server" 
                    ControlToValidate="txtCorreo" ErrorMessage="Correo no valido" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Black" CssClass="auto-style4"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">Teléfono*</td>
            <td class="auto-style27">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVTelefono" 
                        runat="server" ControlToValidate="txtTelefono" ErrorMessage="Campo Obligatorio" ForeColor="Black" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style29">Usuario*</td>
            <td class="auto-style26">
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" 
                    ControlToValidate="txtUsuario" ErrorMessage="Campo Obligatorio" ForeColor="Black" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">Celular</td>
            <td class="auto-style27">
                <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style29">Contraseña*</td>
            <td class="auto-style26">
                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" 
                    ControlToValidate="txtContraseña" ErrorMessage="Campo Obligatorio" ForeColor="Black" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">Dirección*</td>
            <td class="auto-style27">
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" 
                    ControlToValidate="txtDireccion" ErrorMessage="Campo Obligatorio" ForeColor="Black" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style29">Confirmar Contraseña*</td>
            <td class="auto-style26">
                <asp:TextBox ID="txtCcontraseña" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="cvContraseña" runat="server" 
                    ControlToCompare="txtContraseña" ControlToValidate="txtCcontraseña" 
                    ErrorMessage="Las contraseñas no coinciden" ForeColor="Black" CssClass="auto-style4"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="4" class="auto-style4">
                (*)Campo obligatorio</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="btnRegistro" runat="server" Text="Registrarse" OnClick="btnRegistro_Click" />

            </td>
        </tr>
    </table>
    </div>
</asp:Content>