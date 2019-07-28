
<%@page import="com.ipartek.formacion.controller.YTController"%>
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
	<a class="navbar-brand" href="#">JEE</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Inicio
					
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="backoffice/YTController">Videos
					
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="ejemplos/calculadora.jsp">Calculadora
					
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="ejemplos/pagina404.jsp">Prueba 404
					
			</a></li>
			<li class="nav-item active mr-3 ml-3">
				       	<c:if test="${usuario == null}">
				        	<a class="nav-link" href="login.jsp">Login</a>
				        </c:if>
				        <c:if test="${usuario != null}">
				        	<span><i class="far fa-user-circle"></i>${usuario}</span>
				        	<a class="nav-link d-block mr-6" href="logout">Logout</a>
				        </c:if>		       
			</li>
			<li class="nav-item">
		      <div class="dropdown">
				  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    Videos Visualizados
				  </button>
			 <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				  	<c:forEach items="${videosVistos}" var="vv"> 
				    	<a class="dropdown-item" href="backoffice/YTController?op=<%=YTController.OP_DETALLE%>&id=${vv.value.id}">(${vv.key}) ${vv.value.nombre}</a>
				    </c:forEach>				    
				  </div>
				</div>
	      </li>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
	</div>
</nav>

<main class="container">
 <%--  <div class="row">	
  <div class="col-12">
	<% if ( request.getAttribute("mensaje") != null ){ %>
	 	<div class="alert alert-${mensaje.tipo} alert-dismissible fade show" role="alert">
		  <p>${mensaje.texto}</p>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>

		<%} %>
	</div>	
	  </div> --%>