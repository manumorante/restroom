<div id="cabecera">
	<div id="logo"><a href="/"><img src="/arch/logo.gif" alt="Globo Sanitarios - Ir al inicio" width="55" height="59" hspace="6" border="0" /></a></div>
	<div id="menu-prin">
		<ul>
		  <li><a href="/catalogos/">Productos</a></li>
		  <li><a href="/quienes_somos/">Quienes somos</a></li>
		  <li><a href="/profesionales/">Profesionales</a></li>
		  <li><a href="/calidad_iso">Calidad ISO</a></li>
		  <li><a href="/contacto/">Contacto</a></li>
	    </ul>
  </div>
<%
	Dim key
	key = trim(""& lcase(request.QueryString("key")))
%>
	<div id="buscador-general">
		<form action="/buscar/" method="get" name="buscador-general" target="_self" id="buscador-general">
		<table>
			<tr>
			<td colspan="2">Buscador</td>
			</tr>
			<tr>
			<td><input name="key" type="text" id="key" value="<%=key%>" maxlength="25" /></td>
			<td><label>
			  <input type="image" src="/arch/buscar.jpg" alt="Buscar" />
			  </label></td>
			</tr>
		</table>
	  </form>
	</div>
</div>