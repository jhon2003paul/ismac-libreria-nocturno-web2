<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head lang="es">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Venta - Biblioteca</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
    
</head>
<body>
            <nav></nav>
            <section>
            
            <div class="container" style="padding-top: 5px;">
            <h1>Clientes</h1>
            </div>
            
            <div class="container" style="text-align: center; padding-bottom: 5px;">
            
            <button class="btn btn-primary "onclick="window.location.href='/ismac-libreria-online-web/clientes/findOne?opcion=1'; return false;">Agregar</button>
				
            </div>
			      
				<div class="container table-responsive">
				
				<table id="tabla1" name="tabla1" date-search="true" data-pagination="true" class="table table-striped table-sm">
					<thead>
						<tr>
							<th>idCliente</th>
							<th>cedula</th>
							<th>nombre</th>
							<th>apellido</th>
							<th>direccion</th>
							<th>telefono</th>
							<th>correo</th>
							<th>Acciones</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${clientes}">
							<tr>
								<td data-sortable="true">${item.idCliente}</td>
								<td data-sortable="true">${item.cedula}</td>
								<td data-sortable="true">${item.nombre}</td>
								<td data-sortable="true">${item.apellido}</td>
								<td data-sortable="true">${item.direccion}</td>
								<td data-sortable="true">${item.telefono}</td>
								<td data-sortable="true">${item.correo}</td>
								<td>
									<button class="btn btn-sucess" onclick="window.location.href='/ismac-libreria-online-web/clientes/findOne?opcion=1&idCliente=${item.idCliente}'; return false;">Actualizar</button>
									<button class="btn btn-danger" onclick="window.location.href='/ismac-libreria-online-web/clientes/findOne?opcion=2&idCliente=${item.idCliente}'; return false;">Borrar</button>
								</td>
							</tr>
						</c:forEach>			
					</tbody>
				</table>
				
				</div>
				
				
	
          </section>
           <footer></footer>

	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.hundle.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
     
     <script type="text/javascript">
     
     var $tabla1 = $('#tabla1');
     
     $(function(){ 
    	 $tabla1.bootstrapTable({
    		sortReset: true 
    	 });
    	
     });
    	 
     
     
 
     </script>
</body>
</html>