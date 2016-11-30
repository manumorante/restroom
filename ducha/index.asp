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
</head>
<body>

	<div id="cuerpo">
		<%cualidad = "ducha"%>
		<!--#include virtual="/inc/inc_menu.asp" -->
		<!--#include virtual="/inc/inc_sub_menu_familias.asp" -->
        <%if ac <> "ficha" then%>
		<h1 class="titulo-seccion-catalogo">Platos de Ducha</h1>
		<div id="familia-foto"><img src="/arch/cabecera_ducha.jpg" alt="Lavabos" width="440" height="164" /></div>
		<div id="familia-descripcion"><p>Toda la extensa gama de Globo Sanitarios, en dise&ntilde;os y modelaje de nuestros platos de ducha, siempre en stock para garantizar un servicio r&aacute;pido y eficaz. Columnas de hidromasaje y mamparas completan nuestra oferta para la ducha.</p>
		</div>
        <%end if%>
		<!--#include virtual="/inc/inc_catalogo.asp" -->
		<!--#include virtual="/inc/inc_pie.asp" -->
	</div>

</body>
</html>
