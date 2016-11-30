<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<!--#include virtual="/admin/inc_rutinas.asp" -->

<title>Globo Sanitarios</title>
<%
randomize
ale = round(rnd(100)*100)+1

ac = ""& request.QueryString("ac")
codigo = numero(request.QueryString("codigo"))

%>
<link href="/estilos.css?<%=ale%>" rel="stylesheet" type="text/css" />
<link href="/x_submenu.css?<%=ale%>" rel="stylesheet" type="text/css" />

</head>
<body>

	<div id="cuerpo">
		<%cualidad = "lavabos"%>
		<!--#include virtual="/inc/inc_menu.asp" -->
		<!--#include virtual="/inc/inc_sub_menu_familias.asp" -->

		<%if ac <> "ficha" then%>
			<h1 class="titulo-seccion-catalogo">Lavabos</h1>
			<div id="familia-foto"><img src="/arch/lavabos_cabecera.jpg" alt="Lavabos" width="440" height="164" /></div>
			<div id="familia-descripcion">
			  <p>Aqu&iacute; encontrar&aacute; toda nuestra gama de Lavabos, por series y por piezas. Cada estilo, design, formas, r&uacute;stico y cl&aacute;sico, todo con el exclusivo dise&ntilde;o de la porcelana sanitaria italiana. Lavabos de calidad excepcional  adaptados a su estilo.</p>
			</div>
		<%end if%>

		<!--#include virtual="/inc/inc_catalogo.asp" -->
		<!--#include virtual="/inc/inc_pie.asp" -->
	</div>

</body>
</html>
