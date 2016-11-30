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
<!--#include virtual="/admin/inc_rutinas.asp" -->
<%
	dim total

	' Búsqueda
	' --------------------------------------------------------------
	sql = "SELECT * FROM REGISTROS"
	sql = sql &" WHERE 1=2"
	sql = sql &" OR R_TITULO LIKE '%"& key &"%'"
	sql = sql &" OR R_MEMO1 LIKE '%"& key &"%'"
	
	' Paginado
	reg_pag = 10
	pag = numero(request.QueryString("pag"))
	if pag = 0 then
		pag = 1
	end if
	reg_ini = (pag*reg_pag)-reg_pag
	
	cualidad = "lavabos"
	set re = Server.CreateObject("ADODB.Recordset")
	re.ActiveConnection = conn_lavabos
	re.Source = sql : re.CursorType = 3 : re.CursorLocation = 2 : re.LockType = 3 : re.Open()
	total = re.recordcount
%>
	<div id="seccion">
		<h1 class="titulo-seccion">Resultados de la b&uacute;squeda </h1>
		<div id="texto">
			<p>A continuac&iacute;on se muestran los resultados para la b&uacute;squeda de la(s) pablabra(s): <strong><%=key%></strong></p>
			<%
			if re.eof then
				%><strong>No se han encontrado coincidencias</strong><%
			else
				%><div id="resultados"><ul id="resultados"><%
				n=0
				pintados=0
				while not re.eof
					n = n+1
					if n>= reg_ini and pintados < reg_pag then
						pintados = pintados +1
						if fila = "fila-a" then
							fila = "fila-b"
						else
							fila = "fila-a"
						end if
						%><li class="<%=fila%>">
						<p class="titulo"><a href="/<%=cualidad%>/index.asp?seccion=<%=re("R_SECCION")%>&ac=ficha&codigo=<%=RE("R_ID")%>"><%=re("R_TITULO")%></a></p>
						<p class="descripcion"><%=re("R_MEMO1")%></p>
						</li><%
					end if
					re.movenext()
				wend
				%></ul><%

				num_pag = total / reg_pag
				if num_pag-cint(num_pag) >0 then
					num_pag = cint(num_pag) + 1
				else
					num_pag = cint(num_pag)
				end if
				%><ul id="paginado"><%
				for n=1 to num_pag
					if n=pag then
						%><li><a id="actual"><%=n%></a></li><%
					else
						%><li><a href="index.asp?key=<%=key%>&pag=<%=n%>"><%=n%></a></li><%
					end if
				next
				%></ul><%

				%></div><%
			end if
			%>
		</div>
	</div>
<%
	re.close()
	set re = nothing
%>
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
