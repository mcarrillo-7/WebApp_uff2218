<%@page import="com.ipartek.formacion.controller.backoffice.YTController"%>

<%@include file="../../includes/header.jsp"%>
<%@include file="../../includes/navbar.jsp"%>

	<h1>Nuevo Video</h1>
	
	<div class="row">
		<div class="col">
		
			<%@include file="../../includes/mensaje.jsp"%>
			
			<form action="backoffice/YTController" method="post" class="mb-2">
			
				<input type="hidden" name="op" value="<%=YTController.OP_GUARDAR%>">
			
			
					<label for="id">Id:</label>
					<input type="text" name="id" value="${video.id}" readonly class="form-control">
		
				
				
					<label for="nombre">Nombre:</label>
					<input type="text" name="nombre" value="${video.nombre}"
					       placeholder="M�nimio 3 m�ximo 150"
					       class="form-control">
				
				
				<div class="form-group">
					<label for="codigo">Codigo:</label>
					<input type="text" name="codigo" value="${video.codigo}"
					       placeholder="Exactamente 11" 
						   class="form-control">
				</div>	
			
				<input type="submit" value="${(video.id != -1)?'Modificar':'Crear'}" class="btn btn-outline-primary  btn-block">
			
			</form>
			
			<c:if test="${video.id != -1}">
			
				
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-outline-danger btn-block" data-toggle="modal" data-target="#exampleModal">
				  Eliminar
				</button>
		
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">�Estas Seguro de ELIMINAR el registro?</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <p>Cuidado porque operaci�n no es reversible</p>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        	<form action="backoffice/YTController" method="post">	
							<input type="hidden" name="op" value="<%=YTController.OP_ELIMINAR%>">
							<input type="hidden" name="id" value="${video.id}" readonly>			
							<input type="submit" value="Eliminar" class="btn btn-danger btn-block">	
						</form>
				      </div>
				    </div>
				  </div>
				</div>
				
				
			</c:if>	
			
			
			
			
			
			
			
			
		</div>
		<div class="col">	
		
			<div class="embed-responsive embed-responsive-16by9">
		
				<iframe class="embed-responsive-item"
				        src="https://www.youtube.com/embed/${video.codigo}" 
				        frameborder="0" 
				        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
				        allowfullscreen></iframe>
			</div>        
		</div>
	</div>
	
<%@include file="../../includes/footer.jsp"%>