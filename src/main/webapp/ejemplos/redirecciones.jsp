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
			a una p�gina diferente (cuando un usuario no registrado ingresa a la
			p�gina index.html debemos redireccionarlo a la p�gina login.html.)</p>
		<p>Un cliente hace una petici�n a un servidor web solicitando un
			recurso por ejemplo una p�gina web, y el servidor web entiende este
			mensaje busca el recurso y retorna un mensaje de respuesta. Esto
			contiene un header y un body, en el body se encuentra el contenido
			del recurso solicitado para el ejemplo contiene el html de la p�gina
			solicitada, y en el header contiene entre otras cosas un c�digo de
			resultado de la petici�n.</p>
		<p>
			Si el c�digo es el 200, el navegador entiende este c�digo y muestra la p�gina con el HTML.
			El servidor tambien puede devolver c�digos de error como el 500, como por ejemplo c�digos que indican que el reecurso fue movido temporalmente.
			Cuando esto pasa el mensaje de respuesta tiene como c�digo de respuesta el n�mero 302, y en el body la url del nuevo recurso, as� pues el browser entiende el n�mero 302 y navega (redirecciona - redirect) a la url recibida.
		</p>
		

</section>


<%@include file="../includes/footer.jsp"%>