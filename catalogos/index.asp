<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/index.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="Description" content="Globo Sanitarios - Distribución de sanitario de diseño italiano" />
<meta name="Keywords" content="lavabos, sanitarios, grifería, platos de ducha, diseño italiano, granada, andalucía, españa" />
<meta name="title" content="Globo Sanitarios - Distribución de sanitario de diseño italiano" />
<meta name="DC.Language" scheme="RFC1766" content="Spanish" />
<meta name="Revisit-after" content="15 days" />
<meta name="robots" content="ALL,FOLLOW" />
<meta http-equiv="refresh" content="/;URL=" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Globo Sanitarios</title>
<!-- InstanceEndEditable -->
<%
randomize
dim ale
ale = round(rnd(100)*100)+1
%>
<link href="/estilos.css?<%=ale%>" rel="stylesheet" type="text/css" />
<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
</head>


<%
Dim conn_lavabos
Dim conn_sanitarios
Dim conn_masarticulos
Dim conn_ducha

conn_lavabos	= "Driver={Microsoft Access Driver (*.mdb)};DBQ= " & Server.MapPath("\datos\esp\lavabos\lavabos.mdb")
conn_sanitarios	= "Driver={Microsoft Access Driver (*.mdb)};DBQ= " & Server.MapPath("\datos\esp\sanitarios\sanitarios.mdb")
conn_masarticulos	= "Driver={Microsoft Access Driver (*.mdb)};DBQ= " & Server.MapPath("\datos\esp\masarticulos\masarticulos.mdb")
conn_ducha		= "Driver={Microsoft Access Driver (*.mdb)};DBQ= " & Server.MapPath("\datos\esp\ducha\ducha.mdb")

%>
<div id="cuerpo">
	<!--#include virtual="/inc/inc_menu.asp" -->
	<!-- InstanceBeginEditable name="Cuerpo" -->
	<!--#include virtual="/inc/inc_sub_menu_familias.asp" -->
	<div id="seccion">
		<h1 class="titulo-seccion">Cat&aacute;logos</h1>
		<div id="ProductosColIzq">
		  <div id="texto">
			  <p>Nuestros cat&aacute;logos.</p>
				<ul class="lista">
				  <li><a href="/contacto/formulario/"><strong>Solicitar m&aacute;s informaci&oacute;n</strong></a></li>
            </ul>
			    <p class="ParrafoDestacado">Navegue por esta Web y vea uno a uno nuestros productos con sus informaci&oacute;n y foto detalladas:</p>
<ul class="lista">
		          <li><a href="/Lavabos/">Lavabos</a> </li>
		          <li><a href="/Sanitarios/">Sanitarios</a></li>
          <li><a href="/Ducha/">Platos de ducha</a></li>
            <li><a href="/masarticulos/">M&aacute;s art&iacute;culos</a></li>
</ul>
          </div>
		</div>
		<div id="ProductosColDer">
		  <div class="VariasDescargas">            
		    <h3>Lavabos</h3>
		    <ul>
		      <li><a href="../datos/catalogos2009/LAVAMANOSMISURA_.pdf">Lavamanos Misura</a></li>
		      <li><a href="../datos/catalogos2009/Design-Azzurra-y-Zen24.pdf">Design Azzurra y Zen 24</a></li>
		      <li><a href="../datos/catalogos2009/Lavabos-GSG-color.pdf">Lavabos GSG color</a></li>
	        </ul>
		    <h3>Platos de ducha</h3>
		    <ul>
		      <li><a href="../datos/catalogos2009/CATALOGOPLATOS.pdf">Cat&aacute;logo completo</a></li>
	        </ul>
		    <h3>Otros art&iacute;culos</h3>
		    <ul>
		      <li><a href="../datos/catalogos2009/Columnas-y-mamparas.pdf">Columnas  y  mamparas</a></li>
		      <li>Art&iacute;culos complementarios</li>
		      <li><a href="../datos/catalogos2009/DAGUA_GRIFERIA.pdf">D'Agua  grifer&iacute;a</a></li>
	        </ul>
		    <h3>Sanitarios</h3>
		    <ul>
		      <li><a href="../datos/catalogos2009/OZ_.pdf">OZ</a></li>
		      <li><a href="../datos/catalogos2009/TOUCH_.pdf">Touch</a></li>
		      <li><a href="../datos/catalogos2009/DUNIA_.pdf">Dunia</a></li>
		      <li><a href="../datos/catalogos2009/LILAC.pdf">Lilac</a></li>
		      <li><a href="../datos/catalogos2009/RACE_.pdf">Race</a></li>
		      <li><a href="../datos/catalogos2009/PAESTUM.pdf">Paestum y Nuevo Paestum</a></li>
		      <li><a href="../datos/catalogos2009/BSIDE_CATALOGO.pdf">B-Side</a></li>
		      <li><a href="../datos/catalogos2009/CLAS05_.pdf">Clas 05</a></li>
		      <li><a href="../datos/catalogos2009/GIUNONEYNOVECENTO_.pdf">Giunone y Novecento</a></li>
		      <li>PMR y Discapacitados</li>
	        </ul>
		    <p>&nbsp;</p>
		  </div>
	  </div>
	</div>
	
	<!-- InstanceEndEditable -->
	<!--#include virtual="/inc/inc_pie.asp" -->
</div>
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-194047-9";
urchinTracker();
</script>
</body>
<!-- InstanceEnd --></html>
