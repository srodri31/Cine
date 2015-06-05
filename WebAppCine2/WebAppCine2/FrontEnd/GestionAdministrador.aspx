<%@ Page Title=".::Gestion de Administradores::." Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="GestionAdministrador.aspx.cs" Inherits="WebAppCine2.FrontEnd.GestionAdministrador" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../StyleBuscar.css" rel="stylesheet" />

    <style type="text/css">

        .auto-style1 {
            height: 150px;
            text-align: left;
        }
        .auto-style2 {
            height: 355px;
        }
        .auto-style3 {
            color: #000000;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            color: #000000;
            text-align: left;
        }
        .auto-style6 {
            height: 150px;
            text-align: center;
            color: #000000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style7">
        <tr>
            <td class="auto-style6" style="height: 8px" colspan="4"><h1>Gestión de Administradores</h1></td>
        </tr>
        <tr>
            <td class="auto-style1" style="height: 8px" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Identificación*</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtCedula" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4" style="height: 8px"><span class="auto-style3">Sexo*</span></td>
            <td class="auto-style4" style="height: 8px">
                <asp:DropDownList ID="txtSexo" runat="server" Height="22px" Width="128px">
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSexo" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Nombre(s)*</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtNombre" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4"><span class="auto-style3">Fecha de Nacimiento*</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtFechaN" runat="server"></asp:TextBox>
                <asp:CalendarExtender BehaviorID="txtFechaNExtender" runat ="server" 
                    ID="Calendar" DaysModeTitleFormat="M" Format="yyyy/MM/dd" 
                    TargetControlID="txtFechaN" TodaysDateFormat="yyyy/MM/dd"></asp:CalendarExtender>
                </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtFechaN" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Apellidos*</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtApellido" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">Correo electronico*</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtCorreo" ErrorMessage="Correo no valido" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style5">Teléfono*</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">Usuario*</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr class="auto-style3">
            <td class="auto-style5">Celular</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">Contraseña*</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr class="auto-style3">
            <td class="auto-style4">Dirección*</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">Confirmar contraseña*</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCcontraseña" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtCcontraseña" ErrorMessage="Las contraseñas no coinciden"></asp:CompareValidator>
                </td>
        </tr>
        <tr class="auto-style3">
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="4" style="height: 6px">
                (*)Campo obligatorio</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4" style="height: 6px">
                <span class="auto-style3">&nbsp; </span>
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
                <span class="auto-style3">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Button ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" CausesValidation="False" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" CausesValidation="False" />
&nbsp;&nbsp;&nbsp; <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CausesValidation="False" />
                <asp:ModalPopupExtender ID="Buscar" runat="server" 
                                    BackgroundCssClass="FondoAplicacion" PopupControlID="pnlBuscar" 
                                    TargetControlID="btnBuscar" CancelControlID="btnCerrar"></asp:ModalPopupExtender>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4" style="height: 6px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4" style="height: 6px">
                <asp:GridView ID="gvAdmin" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                    CellPadding="3" ForeColor="Black" 
                    OnSelectedIndexChanged="gvAdmin_SelectedIndexChanged" style="color: #000000" 
                    GridLines="Vertical">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar" />
                        <asp:BoundField DataField="Pk_Adm_Cedula" HeaderText="Identificación" />
                        <asp:BoundField DataField="Adm_Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Adm_Apellido" HeaderText="Apellido" />
                        <asp:BoundField DataField="Adm_Telefono" HeaderText="Teléfono" />
                        <asp:BoundField DataField="Adm_Celular" HeaderText="Celular" />
                        <asp:BoundField DataField="Adm_Direccion" HeaderText="Dirección" />
                        <asp:BoundField DataField="Adm_Genero" HeaderText="Genero" />
                        <asp:BoundField DataField="Adm_FechaN" HeaderText="F. Nacimiento" />
                        <asp:BoundField DataField="Adm_Correoelectronico" HeaderText="Email" />
                        <asp:BoundField DataField="Cta_Usuario" HeaderText="Usuario" />
                        <asp:BoundField DataField="Cta_Password" HeaderText="Contraseña" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4" style="height: 6px">
                <asp:Panel ID="pnlBuscar" runat="server" Width="449px" CssClass="Panel">
                    <table class="style24" 
     bgcolor="White">
                        <tr>
                            <td style="text-align: center" colspan="2" class="auto-style5">
                                Buscar</td>
                            <td style="text-align: right">
                                <asp:Button ID="btnCerrar" runat="server" BackColor="#999999" 
                                    BorderColor="#FF3300" ForeColor="#FF3300" style="text-align: right" Text="X" CausesValidation="False" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 177px">
                                <asp:DropDownList ID="ddlBuscar" runat="server">
                                    <asp:ListItem>Identificación</asp:ListItem>
                                    <asp:ListItem>Nombre</asp:ListItem>
                                    <asp:ListItem>Apellido</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 181px">
                                <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 177px">
                                &nbsp;</td>
                            <td style="width: 181px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Button ID="btnOk" runat="server" 
                                CausesValidation="False" Text="Buscar" onclick="btnOk_Click" />
                            </td>
                            <td style="text-align: center">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server"
                TargetControlID="pnlBuscar"
                Radius="8">
                </asp:RoundedCornersExtender> 
            </td>
        </tr>
    </table>
</asp:Content>
