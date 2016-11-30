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
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
<!--
.color {color: #5B89B3}
.mapa {
	width:458px;
	height:350px;
	border: 1px solid #6691B4;
}
-->
</style>
<!-- InstanceEndEditable -->
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
<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAA60g3vspq2zy4QOiXwO3LkRRuGL_-79ysSAn2cgTju8gdIiY5FhQxgZkw1wDpHF5gzjPMCB7uCoA_cQ" type="text/javascript"></script>
<script type="text/javascript">
	//<![CDATA[


	var direccion = 'C/ Garrido Atienza, 8,18320, Spain';
	var direccion_globo = 'C/ Garrido Atienza, 1<br />Pol&iacute;gono Industrial Dos de Octubre<br />18320 Santa Fe (Granada)';
	var globo = "<img src='http://www.globosanitarios.com/arch/logo_mini.gif' align='left' /><font face='Verdana' size=1><strong>Globo Sanitarios</strong><br />"+ direccion_globo +"</font>"

    var map = null;
    var geocoder = null;

    function load() {
		if (GBrowserIsCompatible()) {
			map = new GMap2(document.getElementById("map"));
			map.addControl(new GSmallZoomControl());
			map.addControl(new GMapTypeControl());
			map.enableDoubleClickZoom();

			geocoder = new GClientGeocoder();
			showAddress(direccion);
		}
	}

	function showAddress(address) {
		if (geocoder) {
			geocoder.getLatLng(
			address,
			function(point) {
				if (!point) {
					
				} else {
					map.setCenter(point, 15);

					// Create our "tiny" marker icon
					var icon = new GIcon();
					icon.image = "http://labs.google.com/ridefinder/images/mm_20_red.png";
					icon.iconSize = new GSize(12, 20);
					icon.iconAnchor = new GPoint(6, 20);
					icon.infoWindowAnchor = new GPoint(5, 1);
		
					var marker = new GMarker(point, icon);
					map.addOverlay(marker);
					marker.openInfoWindowHtml(globo);

				}
			});
		}
	}

	//]]>
</script>
	<div id="seccion">
		<h1 class="titulo-seccion">Contacto</h1>
		<div id="texto">
		  <div id="ContactoColIzq">
				<h2 id="Subtitulo">Direcci&oacute;n</h2>
		        <p>		          C/ Garrido Atienza, 1<br />
		          Pol&iacute;gono Industrial Dos de Octubre<br />
		          18320 Santa Fe (Granada)<br />
            Espa&ntilde;a</p>
      <p><strong>Tel&eacute;fono y Fax</strong><br />
	            958 44 06 08<br />
                958 51 33 20 (Fax) </p>
		        <p><strong>E-mail</strong><br />
		          <img src="../arch/email-info.gif" width="172" height="17" /></p>
            <h2 id="Subtitulo">Formulario</h2>
		        <p><a href="formulario"><strong><img src="/arch/flecha.gif" alt="=&gt;" width="10" height="10" border="0" align="absmiddle" /> Rellenar formulario de contacto</strong></a> </p>
		        <p>Si deseas formar parte de nuestro equipo profesional env&iacute;anos tu CV a: <img src="../arch/email-marketing.gif" width="203" height="14" /></p>
		  </div>
		  <div id="ContactoColDer">
		    <div id="map" class="mapa"></div>
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
