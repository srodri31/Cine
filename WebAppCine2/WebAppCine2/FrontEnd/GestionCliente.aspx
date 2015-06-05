<%@ Page Title=".::Gestion de Clientes::." Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="GestionCliente.aspx.cs" Inherits="WebAppCine2.FrontEnd.GestionArrendatario" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleBuscar.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
        .auto-style2 {
            color: #000000;
            text-align: left;
            width: 185px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            color: #000000;
            text-align: left;
        }
        .auto-style5 {
            color: #000000;
            width: 144px;
            text-align = left;
        }
        .auto-style6 {
            text-align: left;
            width: 252px;
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
            <td class="auto-style1" colspan="4"><h1> Gestión de Clientes</h1></td>
        </tr>
        <tr>
            <td class="style15" colspan="4">
                <table class="style21">
                    <tr>
                        <td style="text-align: center">
                            &nbsp;</td>
                                        </tr>
                                    </table>
            </td>
        </tr>
        <tr>
            <td class="style14" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Identificación*</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvIdentificacion" runat="server" 
                    ControlToValidate="txtCedula" ErrorMessage="Campo Obligatorio" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">Genero*</td>
            <td class="auto-style3">
                <asp:DropDownList ID="txtSexo" runat="server" Height="22px" Width="128px">
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvSexo" runat="server" 
                    ControlToValidate="txtSexo" ErrorMessage="Campo Obligatorio" ForeColor="Black" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Nombre(s)*</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" 
                    ControlToValidate="txtNombre" ErrorMessage="Campo Obligatorio" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">Fecha de Nacimiento*</td>
            
            <td class="auto-style3">
                <asp:TextBox ID="txtFechaN" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="Calendar" runat="server" TargetControlID="txtFechaN" 
                    Format="yyyy/MM/dd"> </asp:CalendarExtender>

                <asp:RequiredFieldValidator ID="rfvFechaN" runat="server" 
                    ControlToValidate="txtFechaN" ErrorMessage="Campo Obligatorio" ForeColor="Black" CssClass="auto-style4"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td class="auto-style4">Apellidos*</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvApellido" runat="server" 
                    ControlToValidate="txtApellido" ErrorMessage="Campo Obligatorio" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">Correo Electronico*</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revCorreo" runat="server" 
                    ControlToValidate="txtCorreo" ErrorMessage="Correo no valido" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Black" CssClass="auto-style4"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Teléfono*</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVTelefono" 
                        runat="server" ControlToValidate="txtTelefono" ErrorMessage="Campo Obligatorio" ForeColor="Black" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">Usuario*</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" 
                    ControlToValidate="txtUsuario" ErrorMessage="Campo Obligatorio" ForeColor="Black" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Celular</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">Contraseña*</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" 
                    ControlToValidate="txtContraseña" ErrorMessage="Campo Obligatorio" ForeColor="Black" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Tipo*</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTipo" runat="server" 
                    ControlToValidate="txtTipo" ErrorMessage="Campo Obligatorio" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">Confirmar Contraseña*</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtCcontraseña" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="cvContraseña" runat="server" 
                    ControlToCompare="txtContraseña" ControlToValidate="txtCcontraseña" 
                    ErrorMessage="Las contraseñas no coinciden" ForeColor="Black" CssClass="auto-style4"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Dirección*</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" 
                    ControlToValidate="txtDireccion" ErrorMessage="Campo Obligatorio" ForeColor="Black" CssClass="auto-style4"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="style9">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" class="auto-style4">
                (*)Campo obligatorio</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" 
                    onclick="btnIngresar_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnEditar" runat="server" Text="Editar" 
                    onclick="btnEditar_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" 
                    onclick="btnEliminar_Click" CausesValidation="False" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnlimpiar" runat="server" onclick="btnlimpiar_Click" 
                    Text="Limpiar" CausesValidation="False" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" 
                    CausesValidation="False" />
                <asp:ModalPopupExtender ID="Buscar" runat="server" 
                                    BackgroundCssClass="FondoAplicacion" PopupControlID="pnlBuscar" 
                                    TargetControlID="btnBuscar" CancelControlID="btnCerrar"></asp:ModalPopupExtender>

            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                            <asp:GridView ID="gvCliente" runat="server" AutoGenerateColumns="False"
                                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                CellPadding="3" 
                                onselectedindexchanged="gvArrendatario_SelectedIndexChanged" 
                                Width="1097px" ForeColor="Black" 
                                GridLines="Vertical">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar" />
                                    <asp:BoundField DataField="Pk_Cli_Cedula" HeaderText="Identificación" />
                                    <asp:BoundField DataField="Cli_Nombre" HeaderText="Nombre" HtmlEncode="false"/>
                                    <asp:BoundField DataField="Cli_Apellido" HeaderText="Apellido" HtmlEncode="false"/>
                                    <asp:BoundField DataField="Cli_Genero" HeaderText="Genero" />
                                    <asp:BoundField DataField="Cli_FechaN" HeaderText="F. Nacimiento" 
                                        DataFormatString="{0:yyyy/MM/dd}"/>
                                    <asp:BoundField DataField="Cli_Telefono" HeaderText="Teléfono" />
                                    <asp:BoundField DataField="Cli_Celular" HeaderText="Celular" />
                                    <asp:BoundField DataField="Cli_Direccion" HeaderText="Dirección" HtmlEncode="false"/>
                                    <asp:BoundField DataField="Cli_Correoelectronico" 
                                        HeaderText="Email" HtmlEncode="false"/>
                                    <asp:BoundField DataField="Cli_Tipo" HeaderText="Tipo" />
                                    <asp:BoundField DataField="Cta_Usuario" HeaderText="Usuario" />
                                    <asp:BoundField DataField="Cta_Password" HeaderText="Contraseña" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                            </asp:GridView>
                        </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Panel ID="pnlBuscar" runat="server" Width="449px" CssClass="Panel">
                    <table class="style24" 
     bgcolor="White">
                        <tr>
                            <td style="text-align: center" colspan="2" class="auto-style1">
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
                                    <asp:ListItem>Tipo</asp:ListItem>
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
    </div>
</asp:Content>
