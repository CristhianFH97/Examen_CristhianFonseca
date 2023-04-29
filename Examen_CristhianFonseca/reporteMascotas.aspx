<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reporteMascotas.aspx.cs" Inherits="Examen_CristhianFonseca.reporteMascotas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte de Mascotas</title>
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
                <h1><strong>Reporte de Mascotas:</strong></h1>
            </td>
        </tr>
        <tr>
            <td>
                <div class="auto-style4">
                    <dl>
                        <dd>
                            <p>
                                <em>
                                <strong>
                                <br class="auto-style5" />
                                <br class="auto-style5" />
                                <span class="auto-style5">La página de Reporte de Mascotas te permite ver el nombre, tipo y comida favorita de cada mascota.</span><br class="auto-style5" />
                                <br class="auto-style5" />
                <br class="auto-style5" />
                                </strong>
                                </em>
                            </p>
                        </dd>
                    </dl>
                </div>
                <div class="auto-style4">
                    <strong>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" DataSourceID="SqlReporteMascotas" Width="700px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Nombre_Mascota" HeaderText="Nombre Mascota" SortExpression="Nombre_Mascota" />
                            <asp:BoundField DataField="Tipo_Mascota" HeaderText="Tipo Mascota" SortExpression="Tipo_Mascota" />
                            <asp:BoundField DataField="Comida_Favorita" HeaderText="Comida Favorita" SortExpression="Comida_Favorita" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlReporteMascotas" runat="server" ConnectionString="<%$ ConnectionStrings:VeterinariaConnectionString %>" SelectCommand="SELECT [Nombre_Mascota], [Tipo_Mascota], [Comida_Favorita] FROM [Mae_Mascotas]"></asp:SqlDataSource>
                    </strong>
                </div>
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>