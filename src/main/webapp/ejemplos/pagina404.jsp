<%@include file="../includes/header.jsp" %>

<%@include file="../includes/navbar.jsp" %>

<h1>Cómo añadir páginas de error 404 y 500 de forma adecuada</h1>
<h2 class="text-info h4">Esto nos servirá para que no nos salga la típica página "cutre" de dichos errores </h2>

<ol>
	<li>Creamos una carpeta llamada WEB_INF	 y dentro de ella creamos un fichero XML llamado web.xml</li>
	<li>Creamos dos JSPs, una para el <a href="404.jsp">error 404</a> y otra para el <a href="error500.jsp">error 500</a></li>
	<li>Dentro del fichero XML añadimos el siguiente código: <pre><code>
	&lt;web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee 
		 http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd"
         version="3.1"&gt;
         
	&lt;error-page&gt;
		&lt;error-code&gt;404&lt;/error-code&gt;
		&lt;location>/404.jsp&lt;/location&gt;
	&lt;/error-page&gt;
	&lt;error-page&gt;
		&lt;error-code&gt;500&lt;/error-code&gt;
		&lt;location&gt;/error500.jsp&lt;/location&gt;
	&lt;/error-page&gt;</code></pre><br>En estas líneas indicamos el código de error con la dirección de la página quqe queremos mostrar cada vez que salgan estos errores</li>
	<li>Luego vamos añadiendo la siguiente línea en el header de nuestro proyecto: <pre><code>&lt;%@page errorPage="error.jsp" %&gt;  </code></pre>Para que nos redirija a las páginas de errores 404 y 500 que hemos creado anteriormente</li>
	
</ol>


<%@include file="../includes/footer.jsp" %>