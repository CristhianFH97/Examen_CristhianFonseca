<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reporteUsuarios.aspx.cs" Inherits="Examen_CristhianFonseca.reporteUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte de Usuarios</title>
    <link rel="stylesheet" type="text/css" href="estilos.css">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: left;
            font-size: xx-large;
            color: #FFFFFF;
            height: 39px;
        }
        .auto-style3 {
            color: #FFFFFF;
            margin-right: 590px;
            background-color: #6699FF;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <h1><strong>Reporte de Usuarios:</strong></h1>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>
                        <div class="auto-style4">
                            <dl>
                                <dd>
                                    <p>
                                        <em>
                                                <br class="auto-style5" />
                                                <br class="auto-style5" />
                                                <span class="auto-style5">En esta página, puedes visualizar la tabla de usuarios completa Podrás ver todos los detalles de los usuarios en un formato fácil de leer y ordenado..</span><br class="auto-style5" />
                                                <br class="auto-style5" />
                                                <br class="auto-style5" />
                                        </em>
                                    </p>
                                </dd>
                            </dl>
                        </div>
                        <div class="auto-style4">
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" DataKeyNames="Login_Usuario" DataSourceID="SqlReporteUsuarios" Width="700px">
                                <Columns>
                                    <asp:BoundField DataField="Login_Usuario" HeaderText="Login Usuario" ReadOnly="True" SortExpression="Login_Usuario" />
                                    <asp:BoundField DataField="Nombre_Usuario" HeaderText="Nombre Usuario" SortExpression="Nombre_Usuario" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </strong>
                    <asp:SqlDataSource ID="SqlReporteUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:VeterinariaConnectionString %>" ProviderName="<%$ ConnectionStrings:VeterinariaConnectionString.ProviderName %>" SelectCommand="SELECT [Login_Usuario], [Nombre_Usuario] FROM [Mae_Usuarios]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
