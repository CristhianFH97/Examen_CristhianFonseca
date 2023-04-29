<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reporteCitas.aspx.cs" Inherits="Examen_CristhianFonseca.reporteCitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte De Citas</title>
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
        .auto-style6 {
            height: 352px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <h1><strong>Reporte de Citas:</strong></h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <div class="auto-style4">
                    <dl>
                        <dd>
                            <p>
                                <em>
                                <strong>
                                <br class="auto-style5" />
                                <br class="auto-style5" />
                                <span class="auto-style5">En esta página, puedes visualizar la tabla de usuarios completa. Podrás ver todos los detalles de los usuarios en un formato fácil de leer y ordenado.</span><br class="auto-style5" />
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" DataSourceID="SqlReporteCitas" Width="700px">
                        <Columns>
                            <asp:BoundField DataField="Nombre_Mascota" HeaderText="Nombre Mascota" SortExpression="Nombre_Mascota" />
                            <asp:BoundField DataField="Proxima_fecha" HeaderText="Proxima Fecha" SortExpression="Proxima_fecha" />
                            <asp:BoundField DataField="Medico_Asignado" HeaderText="Medico Asignado" SortExpression="Medico_Asignado" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlReporteCitas" runat="server" ConnectionString="<%$ ConnectionStrings:VeterinariaConnectionString %>" SelectCommand="SELECT mm.Nombre_Mascota, cc.Proxima_fecha, cc.Medico_Asignado
FROM Mae_Mascotas mm
INNER JOIN Control_Citas cc ON mm.ID_Mascota = cc.ID_Mascota
WHERE cc.Proxima_fecha &gt;= CONVERT(date, GETDATE())
ORDER BY cc.Proxima_fecha ASC;"></asp:SqlDataSource>
                    </strong>
                </div>
                <br />
                <br />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>