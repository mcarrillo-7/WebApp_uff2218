<%@include file="../includes/header.jsp" %>

<%@include file="../includes/navbar.jsp" %>
<h1>Ejemplo basico sin jsp</h1>
<p class="text-success">Vamos a crear un servlet para mostrar la REQUEST y RESPONSE</p>
<p class="text-info"> El Servlet sera el encargado de Pintar la respuesta  a pelo, sin usar una jsp</p>

<a class="btn btn-danger" href="controlador1">Peticion GET</a>
<a class="btn btn-danger" href="controlador1?param1=Adidas&param2=Nike%20apesta&p3=Puma">Peticion GET 2</a>
<a class="btn btn-info" href="controladorNoExistente">Peticion GET - Response 404</a>

<%@include file="../includes/footer.jsp" %>