<div class="pie">
  <p>Copyright &copy; 2007 Globo Sanitarios - Tel&eacute;fono: 958 44 06 08 - Email: <img src="../arch/email-info-b.gif" width="172" height="17" align="absmiddle" /></p>
</div>
<%
if ""& Request.Cookies("entrada")="1" then
else
	Response.Redirect("http://www.globosanitarios.com/")
end if
%>
