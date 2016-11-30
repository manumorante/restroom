<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<%Response.Cookies("entrada")="1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Globo Sanitarios</title>
<%
randomize
dim ale
ale = round(rnd(100)*100)+1
%>
<link href="/estilos.css?<%=ale%>" rel="stylesheet" type="text/css" />
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>

<body>
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

<script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0','width','770','height','181','src','/arch/centro?ale=<%=ale%>','quality','high','pluginspage','http://www.macromedia.com/go/getflashplayer','wmode','transparent','movie','/arch/centro?ale=<%=ale%>' ); //end AC code
</script><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="770" height="181">
	<param name="movie" value="/arch/centro.swf?ale=<%=ale%>" />
	<param name="quality" value="high" />
	<param name="wmode" value="transparent" />
	<embed src="/arch/centro.swf?ale=<%=ale%>" width="770" height="181" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
	</object></noscript>

	<div class="familias-portada">
		<h2 class="bg-lavabos"><a href="/Lavabos/">Lavabos</a></h2>
		<div class="menu-modelos-portada">
		<%subfamilias "lavabos"%>
		</div>
	</div>

	<div class="familias-portada">
		<h2 class="bg-sanitarios"><a href="/Sanitarios/">Sanitarios</a></h2>
		<div class="menu-modelos-portada">
		<%subfamilias "sanitarios"%>
		</div>
	</div>

	<div class="familias-portada">
		<h2 class="bg-ducha"><a href="/Ducha/">Platos de ducha </a></h2>
		<div class="menu-modelos-portada">
		<%subfamilias "ducha"%>
		</div>
	</div>

	<div class="familias-portada">
		<h2 class="bg-mas-articulos"><a href="/masarticulos/">M&aacute;s art&iacute;culos</a></h2>
	  <div class="menu-modelos-portada">
		<%subfamilias "masarticulos"%>
		</div>
	</div>

<%
	sub subfamilias(familia)
		'on error resume next
		sql = "SELECT * FROM SECCIONES ORDER BY S_ORDEN"
		conexion = eval("conn_"& familia)
		set re = Server.CreateObject("ADODB.Recordset") : re.ActiveConnection = conexion : re.Source = sql : re.CursorType = 1 : re.CursorLocation = 2 : re.LockType = 1
		re.Open()
	
		if not re.eof then
			%><ul><%
			while not re.eof
				%><li><a href="/<%=familia%>/index.asp?seccion=<%=re("S_ID")%>"><%=re("S_NOMBRE")%></a></li><%
				Response.Write vbcrlf
				re.MoveNext()
			wend
			%></ul><%
		end if

	  re.Close()
	  set re = Nothing
	  on error goto 0
	end sub
%>
<!--#include virtual="/inc/inc_pie.asp" -->
</div>
</body>
</html>
