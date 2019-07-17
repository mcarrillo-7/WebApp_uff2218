<%@include file="../includes/header.jsp" %>

<%@include file="../includes/navbar.jsp" %>
<h1>JSTL Libraries</h1>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<section class="p-3 bg-light">
	<p>Meter definicon </p>
	<a href="https://www.tutorialspoint.com/jsp/jsp_standard_tag_library" target="_blank">Documentacion y ejemplos</a>
</section>

<section class="p-3 bg-light">
<h2>&lt;c:foreach&gt;</h2>
		<p>Sirve para iterar sobre una coleccion sin tener que usar <code>&lt;% ...  %&gt;</code> scriplets</p>
		<p>usando EL con el <code>&dollar;{colores}</code> => ${colores}</p>
		
		<ol>
			<c:forEach items="${colores}" var="color">
				<li>${color}</li>
			</c:forEach>
		</ol>		
		
	</section>
	
	
	<c:if test="${isLunes}"><p>Hoy Es Lunes</p></c:if>
	<c:if test="${!isLunes}"><p>Hoy NO Es Lunes</p></c:if>


<%@include file="../includes/footer.jsp" %>