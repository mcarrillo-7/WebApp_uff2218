<%@page import="com.ipartek.formacion.controller.YTController"%>
<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1 class="text-danger">YOUTUBE</h1>

<section>

	<form action="YTController" method="post" class="form-group mb-2">
		<input type="number" name="id" value="<%--${video.id}--%>" placeholder="Escribe un id"><br>
		<input type="text" name="title" value="<%-- ${video.nombre} --%>" placeholder="Escribe un titulo"><br>
		<input type="text" name="codigo" value="<%-- ${video.codigo} --%>" placeholder="Escribe el codigo..."><br>
		
		<button type="submit" class="btn btn-outline-success ml-5 btn-block">Crear</button>
		<button type="submit" class="btn btn-outline-info ml-5 btn-block">Modificar</button>
		<button type="submit" class="btn btn-outline-danger ml-5 btn-block">Eliminar</button>
		
		
	</form>
	
	<c:if test="${video.id != -1}">
		<form action="videos" method="post">	
			<input type="hidden" name="op" value="<%=YTController.OP_ELIMINAR%>">
			<input type="hidden" name="id" value="${video.id}" readonly>			
			<input type="submit" value="Eliminar">	
		</form>
	</c:if>	
</section>
<%@include file="../includes/footer.jsp"%>