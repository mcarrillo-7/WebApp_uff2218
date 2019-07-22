
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
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="YTController">Videos
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="ejemplos/pagina404.jsp">Prueba 404
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active">
				       	<c:if test="${usuario == null}">
				        	<a class="nav-link" href="login.jsp">Login</a>
				        </c:if>
				        <c:if test="${usuario != null}">
				        	<span>${usuario}<i class="far fa-user-circle"></i></span>
				        	<a class="nav-link" href="logout">Logout</a>
				        </c:if>		       
			</li>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
	</div>
</nav>

<main class="container">