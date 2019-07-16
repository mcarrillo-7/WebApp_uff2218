<%@include file="../includes/header.jsp" %>

<%@include file="../includes/navbar.jsp" %>
<h1>Ejemplo basico con jsp</h1>
<p>Un servlet de java responde siempre por defecto con text/html, pero podemos cambiar el content type</p>

<p><a class="btn btn-outline-dark" href="https://developer.mozilla.org/es/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Lista_completa_de_tipos_MIME" target="_blank">Listedo de los contents que soporta</a></p>

<p>Vamos a responder desde el servlet los mismos datos pero con  diferentes </p>

<p>DATOS: perro[nombre='buba',raza='boxer']</p>

<a href="servlet3?p=1" class="btn btn-outline-info">Respuesta text/plain</a>
<a href="servlet3?p=2" class="btn btn-outline-info">Respuesta text/html</a>
<a href="servlet3?p=3" class="btn btn-outline-info">Respuesta application/json</a>
<a href="servlet3?p=4" class="btn btn-outline-info">Respuesta application/pdf</a>

<%@include file="../includes/footer.jsp" %>