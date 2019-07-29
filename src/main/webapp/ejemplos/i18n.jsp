<%@page import="com.ipartek.formacion.controller.CalculadoraController"%>
<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>
<%@include file="../includes/mensaje.jsp"%>



	<h1>Idiomas</h1>
	
	
	<h2>Recuperar properties desde Servlet</h2>
	
	${mensajeIdioma}
	
	
	<ol>
		<li><a href="i18n?idiomaSeleccionado=fr_FR"><img src="img/francia.jpg" width="100" height="100"></a></li>
		<li><a href="i18n?idiomaSeleccionado=de_DE"><img src="img/germany.jpg" width="100" height="100"></a></li>
		<li><a href="i18n?idiomaSeleccionado=en_EN"><img src="img/uk.jpg" width="100" height="100"></a></li>
	</ol>
	
	
	<h2>Recuperar properties desde JSP</h2>
	
	<%
		//@see includes/header.jsp para la gestion del idioma
	%>
	
	<p>locale:  ${locale}</p>
	
	<p class="h3 text-danger"><fmt:message key="menu.ejemplos" /></p>
	<p class="h3 text-danger"><fmt:message key="menu.inicio" /></p>
	
	
	

<%@include file="../includes/footer.jsp"%>