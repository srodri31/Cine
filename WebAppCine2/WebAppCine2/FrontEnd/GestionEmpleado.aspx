<%@ Page Title=".::Gestion de Empleados::." Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="GestionEmpleado.aspx.cs" Inherits="WebAppCine2.FrontEnd.GestionVendedor" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleBuscar.css" rel="stylesheet" />

    <style type="text/css">

        .auto-style2 {
            height: 355px;
        }
        .auto-style3 {
            color: #000000;
            text-align = left;
        }
        .auto-style11 {
            height: 355px;
            text-align: left;
        }
        .auto-style12 {
            text-align: left;
            width: 380px;
        }
        .auto-style13 {
            color: #000000;
            text-align: left;
        }
        .auto-style14 {
            color: #000000;
            text-align: center;
        }
        .auto-style15 {
            color: #000000;
            text-align: left;
        }
        .auto-style1 {
            color: #000000;
        }
        .auto-style17 {
            width: 187px;
        }
        .auto-style22 {
            text-align: left;
            height: 14px;
            width: 380px;
        }
        .style1
        {
            width: 445px;
            text-align: left;
        }
        .style2
        {
            width: 445px;
            text-align: left;
            height: 14px;
        }
        .auto-style23 {
            color: #000000;
            text-align: left;
            width: 380px;
        }
        .auto-style24 {
            color: #000000;
            text-align: left;
            height: 29px;
        }
        .auto-style25 {
            width: 445px;
            text-align: left;
            height: 29px;
        }
        .auto-style26 {
            width: 187px;
            height: 29px;
        }
        .auto-style27 {
            text-align: left;
            width: 380px;
            height: 29px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style7">
        <tr>
            <td class="auto-style14" colspan="4"><h1>Gestión de Empleados</h1></td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">Identificación*</td>
            <td class="style1">
                <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCedula" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style15">Sueldo*</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtSueldo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtSueldo" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Nombre(s)*</td>
            <td class="style2">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNombre" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style15">Fecha&nbsp;de Nacimiento*</td>
            <td class="auto-style22">
                <asp:TextBox ID="txtFechaN" runat="server"></asp:TextBox>
                <asp:CalendarExtender BehaviorID="txtFechaNExtender" runat ="server" 
                    ID="Calendar" DaysModeTitleFormat="M" Format="yyyy/MM/dd" 
                    TargetControlID="txtFechaN" TodaysDateFormat="yyyy/MM/dd"></asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtFechaN" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Apellidos*</td>
            <td class="style1">
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtApellido" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style15">Correo electronico*</td>
            <td class="auto-style23">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revCorreo" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Correo no valido" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Dirección*</td>
            <td class="style1">
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td style="text-align: left" class="auto-style15"><span class="auto-style15">Usuario*</td>
            <td class="auto-style12">
                </span>
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style15">Teléfono*</td>
            <td class="style1">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td style="text-align: left" class="auto-style15"><span class="auto-style15">Contraseña*</td>
            <td class="auto-style12">
                </span>
                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style15">Celular</td>
            <td class="style1">
                <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
            </td>
            <td style="text-align: left" class="auto-style15"><span class="auto-style15">Confirmar contraseña*</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtCcontraseña" runat="server" TextMode="Password"></asp:TextBox>
                </span>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtCcontraseña" ErrorMessage="Las contraseñas no coinciden" ForeColor="Black"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">Genero*</td>
            <td class="auto-style25">
                <asp:DropDownList ID="txtSexo" runat="server" Height="22px" Width="128px">
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSexo" ErrorMessage="Campo Obligatorio" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td style="text-align: left" class="auto-style26"></td>
            <td class="auto-style27">
                </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td style="text-align: left" class="auto-style17"><span class="auto-style3"></td>
            <td class="auto-style12"></span></td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="4" style="height: 13px">
                (*)Campo obligatorio</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4" style="height: 13px">
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
                <span class="auto-style3">&nbsp;&nbsp;&nbsp; </span>
                <asp:Button ID="btnEditar" runat="server" Text="Editar" 
                    OnClick="btnEditar_Click" CausesValidation="False" />
            &nbsp;<span class="auto-style3">&nbsp;&nbsp; </span>
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" 
                    OnClick="btnEliminar_Click" CausesValidation="False" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" 
                    OnClick="btnLimpiar_Click" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" 
                    CausesValidation="False" />
                <asp:ModalPopupExtender ID="Buscar" runat="server" 
                                    BackgroundCssClass="FondoAplicacion" PopupControlID="pnlBuscar" 
                                    TargetControlID="btnBuscar" CancelControlID="btnCerrar"></asp:ModalPopupExtender>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4" style="height: 13px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4" style="height: 13px">
                <asp:GridView ID="gvVendedor" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                    CellPadding="3" ForeColor="Black" 
                    OnSelectedIndexChanged="gvVendedor_SelectedIndexChanged" 
                    style="text-align: center" AllowPaging="True" 
                    onpageindexchanging="gvVendedor_PageIndexChanging" PageSize="5" 
                    GridLines="Vertical">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar" />
                        <asp:BoundField DataField="Pk_Emp_Cedula" HeaderText="Identificación" />
                        <asp:BoundField DataField="Emp_Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Emp_Apellido" HeaderText="Apellido" />
                        <asp:BoundField DataField="Emp_Direccion" HeaderText="Dirección" />
                        <asp:BoundField DataField="Emp_Telefono" HeaderText="Teléfono" />
                        <asp:BoundField DataField="Emp_Celular" HeaderText="Celular" />
                        <asp:BoundField DataField="Emp_Genero" HeaderText="Sexo" />
                        <asp:BoundField DataField="Emp_Sueldo" HeaderText="Sueldo" />
                        <asp:BoundField DataField="Emp_FechaN" HeaderText="F. Nacimiento" />
                        <asp:BoundField DataField="Emp_CorreoElectronico" HeaderText="Email" />
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
            <td class="auto-style11" colspan="4" style="height: 13px">
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
                                    <asp:ListItem>Sueldo</asp:ListItem>
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
