
<%@page import="com.ipartek.formacion.controller.backoffice.YTController"%>
<!-- FontAwesome -->
<link rel="stylesheet" type="text/css"
	href="vendors/fontawesome-free-5.9.0-web/css/all.min.css">
	
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<!-- custom CSS -->
    <link rel="stylesheet" href="resources/css/styles.css">
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
			</a>
				<!-- <a class="nav-link" href="index.jsp"><fmt:message key="menu.inicio" /></a> --> 
			</li>
			<li class="nav-item-active"><a class="nav-link" href="nombres">Nombres</a></li>			
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="backoffice/YTController">Videos		
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="ejemplos/calculadora.jsp">Calculadora		
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

<%-- <nav class="bg-dark">
    	<a href="i18n?idiomaSeleccionado=fr_FR&ruta=${pageContext.request.requestURI}"><img src="img/francia.jpg" alt="" class="${sessionScope.idiomaSeleccionado != 'fr_FR' ? 'inactive': ''  }"></a>
    	<a href="i18n?idiomaSeleccionado=de_DE&ruta=${pageContext.request.requestURI}"><img src="img/germany.jpg" alt="" class="${sessionScope.idiomaSeleccionado != 'de_DE' ? 'inactive': ''  }"></a>
    	<a href="i18n?idiomaSeleccionado=en_EN&ruta=${pageContext.request.requestURI}"><img src="img/uk.jpg" alt="" class="${sessionScope.idiomaSeleccionado != 'en_EN' ? 'inactive': ''  }"></a> 
    </nav> --%>

<main class="container">
 