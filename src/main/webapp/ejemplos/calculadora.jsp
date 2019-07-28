<%@page import="java.util.ArrayList"%>
<%@include file="../includes/header.jsp"%>

<%@include file="../includes/navbar.jsp"%>

<form id="calculadora" action="calculator" method="post">
	<table>

		<tr>
			<th colspan=4><input type="text" name="resultado" id="resultado"
				size="20" value="" maxlength="10"></th>
		</tr>

		<tr>
			<th><input type="button" name="1" value="1"></th>
			<th><input type="button" name="2" value="2"></th>
			<th><input type="button" name="3" value="3"></th>
			<th><input type="button" name="operador" value="+"></th>
		</tr>

		<tr>
			<th><input type="button" name="4" value="4"></th>
			<th><input type="button" name="5" value="5"></th>
			<th><input type="button" name="6" value="6"></th>
			<th><input type="button" name="operador" value="-"></th>
		</tr>

		<tr>
			<th><input type="button" name="7" value="7"></th>
			<th><input type="button" name="8" value="8"></th>
			<th><input type="button" name="9" value="9"></th>
			<th><input type="button" name="operador" value="*"></th>
		<tr>
			<th><input type="button" name="." value="."></th>
			<th><input type="button" name="0" value="0"></th>
			<th><input type="button" name="operador" value="="></th>
			<th><input type="button" name="/" value="/"></th>
		</tr>

		<tr>
			<th colspan=4><input type="Reset" name="borrar" value="cls"></th>
		</tr>
	</table>
</form>

<%@include file="../includes/footer.jsp"%>
