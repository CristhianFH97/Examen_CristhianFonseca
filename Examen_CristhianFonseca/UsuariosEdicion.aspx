<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsuariosEdicion.aspx.cs" Inherits="Examen_CristhianFonseca.UsuariosEdicion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edicion de Usuarios</title>
    <link rel="stylesheet" type="text/css" href="estilos.css">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 619px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <h1 class="auto-style4"><strong>Edicion de Usuarios:</strong></h1>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        <br />
                        <br />
                        <br />
                        <span class="auto-style4"><strong>Login:</strong></span>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDDLogin" DataTextField="Login_Usuario" DataValueField="Login_Usuario" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDDLogin" runat="server" ConnectionString="<%$ ConnectionStrings:VeterinariaConnectionString %>" SelectCommand="SELECT [Login_Usuario] FROM [Mae_Usuarios]"></asp:SqlDataSource>
                        <br />
                        <br />
                        <span class="auto-style4"><strong>Nuevo Login:</strong></span>&nbsp; <asp:TextBox ID="TNuevoLogin" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <span class="auto-style4"><strong>Nombre de usuario:</strong></span>&nbsp;
                        <asp:TextBox ID="TNombreUsuario" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <span class="auto-style4"><strong>Nueva Clave:</strong></span>&nbsp;
                        <asp:TextBox ID="TNuevaClave" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lmensaje" runat="server" CssClass="error" style="color: #FF0000"></asp:Label>
                        <br />
                        <br />
                        <strong>
                        <asp:Button ID="BTMod" runat="server" Text="Modificar" OnClick="BTMod_Click" />
                        </strong>&nbsp;
                        <asp:Button ID="BTEliminar" runat="server" Text="Eliminar" OnClick="BTEliminar_Click" />
                    &nbsp;
                        <asp:Button ID="BTCrearUsuario" runat="server" OnClick="BTCrearUsuario_Click" Text="Crear Usuario" />
                    </td>
                    <td class="auto-style3">
                        <strong>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Login_Usuario" DataSourceID="SqlUsuariosED" Width="556px" CssClass="auto-style4">
                            <Columns>
                                <asp:BoundField DataField="Login_Usuario" HeaderText="Login Usuario" ReadOnly="True" SortExpression="Login_Usuario" />
                                <asp:BoundField DataField="Nombre_Usuario" HeaderText="Nombre Usuario" SortExpression="Nombre_Usuario" />
                            </Columns>
                        </asp:GridView>
                        </strong>
                        <asp:SqlDataSource ID="SqlUsuariosED" runat="server" ConnectionString="<%$ ConnectionStrings:VeterinariaConnectionString %>" SelectCommand="SELECT [Login_Usuario], [Nombre_Usuario] FROM [Mae_Usuarios]" DeleteCommand="DELETE FROM Mae_Usuarios WHERE Login_Usuario = @login_UsuarioACT;" UpdateCommand="UPDATE Mae_Usuarios
SET Login_Usuario = @loginUsuario,
Clave_Usuario = @claveUsuario,
Nombre_Usuario = @nombreUsuario
WHERE Login_Usuario = @loginUsuarioACT;">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="login_UsuarioACT" PropertyName="SelectedValue" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TNuevoLogin" Name="loginUsuario" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TNuevaClave" Name="claveUsuario" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TNombreUsuario" Name="nombreUsuario" PropertyName="Text" />
                                <asp:ControlParameter ControlID="DropDownList1" Name="loginUsuarioACT" PropertyName="SelectedValue" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
