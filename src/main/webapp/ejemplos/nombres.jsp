<%@page import="java.util.ArrayList"%>
<%@include file="../includes/header.jsp" %>

<%@include file="../includes/navbar.jsp" %>

<h1>Ejemplo de nombres</h1>

<form action="nombres" method="post">
	<label for="boscarnombre">
			<input class="form-control mr-sm-2" name ="buscarnombre" type="search" placeholder="Buscar nombre" aria-label="Search">
      		<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	</label>
</form>

<form action="nombres" method="get">
	<label for="nombre">
			<input type="text" name="nombre" placeholder="Nuevo nombre...">
			<input type="submit" name="Crear">
	</label>
</form>

<h2>Listado completo de nombres</h2>

<p>${listanombres}</p>

<%
/*
ArrayList<String> list = (ArrayList<String>)request.getAttribute("listanombres");

for(String nombre:list){
		
	out.print(nombre);
}*/
%>



<%@include file="../includes/footer.jsp" %>
