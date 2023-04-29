<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Examen_CristhianFonseca.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pagina Principal</title>
    <link rel="stylesheet" type="text/css" href="estilos.css">
    <style type="text/css">
        .auto-style1 {
            width: 894px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
        <div class="sidebar">
            <ul class="menu">
                <li class="submenu">
                    <a>Reportes</a>
                    <ul>
                        <li><a href="reporteUsuarios.aspx" target="_blank">Reporte de Usuarios</a></li>
                        <li><a href="reporteMascotas.aspx" target="_blank">Reporte de Mascotas</a></li>
                        <li><a href="reporteCitas.aspx" target="_blank">Reporte de Control de Citas</a></li>
                    </ul>
                </li>
                <li><a href="UsuariosEdicion.aspx" target="_blank">Editar Usuarios</a></li>
                <li><a href="login.aspx">Salir</a></li>
            </ul>
        </div>
    </div>
    </form>
</body>
</html>