<%@page import="java.util.ArrayList"%>
<%@include file="../includes/header.jsp"%>

<%@include file="../includes/navbar.jsp"%>
<h1>Redirecciones</h1>

<section>
	<div class="no-overflow" id="yui_3_17_2_1_1563432197744_20">
		<p></p>
		<p></p>
		<p>En nuestros proyectos tenemos la necesidad que debido a ciertas
			circunstancias debemos redireccionar al usuario de nuestro sitio web
			a una página diferente (cuando un usuario no registrado ingresa a la
			página index.html debemos redireccionarlo a la página login.html.)</p>
		<p>Un cliente hace una petición a un servidor web solicitando un
			recurso por ejemplo una página web, y el servidor web entiende este
			mensaje busca el recurso y retorna un mensaje de respuesta. Esto
			contiene un header y un body, en el body se encuentra el contenido
			del recurso solicitado para el ejemplo contiene el html de la página
			solicitada, y en el header contiene entre otras cosas un código de
			resultado de la petición.</p>
		<p>
			Si el código es el 200, el navegador entiende este código y muestra la página con el HTML.
			El servidor tambien puede devolver códigos de error como el 500, como por ejemplo códigos que indican que el reecurso fue movido temporalmente.
			Cuando esto pasa el mensaje de respuesta tiene como código de respuesta el número 302, y en el body la url del nuevo recurso, así pues el browser entiende el número 302 y navega (redirecciona - redirect) a la url recibida.
		</p>
		

</section>


<%@include file="../includes/footer.jsp"%>