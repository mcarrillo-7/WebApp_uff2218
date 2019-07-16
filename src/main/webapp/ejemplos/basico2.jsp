<%@include file="../includes/header.jsp" %>

<%@include file="../includes/navbar.jsp" %>
<h1>Ejemplo basico con jsp</h1>

<a href="UserAgentController" class="btn btn-outline-info">Detectar navegador</a>

<h2>Respuesta:</h2>
<p>${navegador}</p>
<p>${movil}</p>

<%@include file="../includes/footer.jsp" %>