<%@page import="com.ipartek.formacion.model.pojo.Video"%>
<%@page import="java.util.ArrayList"%>
<%@include file="../includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../includes/navbar.jsp"%>
<body class="bg-light">
	<h1>Listado de videos:</h1>

	<ul class="list-group">
		<c:forEach items="${videos}" var="video">
			<li class="list-group-item">
			<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/${video.getCodigo()}?rel=0" allowfullscreen></iframe>
			${video.getId()}
			${video.getNombre()}</li>
			
		</c:forEach>
	</ul>



	<%@include file="../includes/footer.jsp"%>