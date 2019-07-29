<%@include file="../includes/header.jsp" %>

<%@include file="../includes/navbar.jsp" %>

<h1>C�mo a�adir p�ginas de error 404 y 500 de forma adecuada</h1>
<h2 class="text-info h4">Esto nos servir� para que no nos salga la t�pica p�gina "cutre" de dichos errores </h2>

<ol>
	<li>Creamos una carpeta llamada WEB_INF	 y dentro de ella creamos un fichero XML llamado web.xml</li>
	<li>Creamos dos JSPs, una para el <a href="404.jsp">error 404</a> y otra para el <a href="error500.jsp">error 500</a></li>
	<li>Dentro del fichero XML a�adimos el siguiente c�digo: <pre><code>
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
	&lt;/error-page&gt;</code></pre><br>En estas l�neas indicamos el c�digo de error con la direcci�n de la p�gina quqe queremos mostrar cada vez que salgan estos errores</li>
	<li>Luego vamos a�adiendo la siguiente l�nea en el header de nuestro proyecto: <pre><code>&lt;%@page errorPage="error.jsp" %&gt;  </code></pre>Para que nos redirija a las p�ginas de errores 404 y 500 que hemos creado anteriormente</li>
	
</ol>


<%@include file="../includes/footer.jsp" %>