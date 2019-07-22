<%@page import="com.ipartek.formacion.controller.YTController"%>
<%@page import="com.ipartek.formacion.model.pojo.Video"%>
<%@page import="java.util.ArrayList"%>
<%@include file="../includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../includes/navbar.jsp"%>
<body class="bg-light">
	<h1>Listado de videos:</h1>
	
	
	<c:if test="${mensaje != null}">
		<div class="alert alert-${mensaje.tipo} alert-dismissible fade show" role="alert">
		  <p>${mensaje.texto}</p>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
	</c:if>	
	
	<a href="YTController?op=<%=YTController.OP_NUEVO%>" class="mb-3 btn btn-outline-success">Nuevo Video</a>
	<ul class="list-group">
		<c:forEach items="${videos}" var="video">
			<li class="list-group-item">
			<iframe class="embed-responsive-item-4by3" src="https://www.youtube.com/embed/${video.getCodigo()}?rel=0" allowfullscreen></iframe></li>
			<li class="list-group-item"><a href="YTController?op=<%=YTController.OP_DETALLE%>&id=${video.id}">${video.getNombre()}</a></li>		
		</c:forEach>
	</ul>



	<%@include file="../includes/footer.jsp"%>